package cn.value.erpreportbyspringboot.service.impl;

import cn.hutool.core.date.DateUtil;
import cn.value.erpreportbyspringboot.common.Constant;
import cn.value.erpreportbyspringboot.config.AuthDTO;
import cn.value.erpreportbyspringboot.mapper.SysetupMapper;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.value.erpreportbyspringboot.domain.Dzzg;
import cn.value.erpreportbyspringboot.service.DzzgService;
import cn.value.erpreportbyspringboot.mapper.DzzgMapper;
import com.google.gson.Gson;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.TimeUnit;

/**
 * @author Levine
 * @description 针对表【dzZG】的数据库操作Service实现
 * @createDate 2023-05-04 10:51:18
 */
@Service
public class DzzgServiceImpl extends ServiceImpl<DzzgMapper, Dzzg> implements DzzgService {
	@Resource
	private DzzgMapper dzzgMapper;
	@Resource
	private SysetupMapper sysetupMapper;

	@Resource
	private RedisTemplate<String, Object> redisTemplate;

	@Override
	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String schedules = request.getParameter("banci");
		String workTime = request.getParameter("workTime");
		List<Dzzg> dzzgList = dzzgMapper.selectList(new LambdaQueryWrapper<Dzzg>().eq(Dzzg::getCusername, username));
		// 判断List是否非空
		if (!CollectionUtils.isEmpty(dzzgList)) {
			HttpSession session = request.getSession();
			Dzzg dzzg = dzzgList.get(0);
			// id,czgxm,calias,cpasswordhash,cPassword,ilogon
			AuthDTO authDTO = new AuthDTO();
			authDTO.setUserId(dzzg.getId());
			authDTO.setAccessToken(dzzg.getId() + "");
			authDTO.setErrorCount(0);
			if (dzzg.getCpasswordhash().equals(password) && !"".equals(workTime) && !"0".equals(
					dzzg.getIlogon().toString())) {
				// TODO 原登录逻辑，暂不修改
				String redisKey = StringUtils.join(
						new String[]{Constant.REDIS_LOGIN, authDTO.getAccessToken().toString()});
				session.setAttribute("name", dzzg.getCzgxm());
				session.setAttribute("rolesid", dzzg.getId());
				session.setAttribute("banci", schedules);
				session.setAttribute("token", redisKey);
				session.setAttribute("workTime", DateUtil.parse(workTime).getTime());
				request.getSession().setAttribute("user", dzzgList);
				// TODO 从sysFactory获取工厂信息，根据cName判断跳转页面
				redisTemplate.opsForValue()
						.set(redisKey, new Gson().toJson(authDTO), Constant.REDIS_EXPIRE_TIME, TimeUnit.MINUTES);
				request.getRequestDispatcher(Constant.SUCCESS_PAGE).forward(request, response);
				//				response.sendRedirect(url);
			} else {
				Integer csetvalue = sysetupMapper.getCsetvalueByCsetname("PrinterpSystemPolicy");
				String casToken = session.getAttribute("token") == null ? "" : session.getAttribute("token").toString();
				if (StringUtils.isNotBlank(casToken)) {
					// 从redis中获取用户信息
					String redisKey = StringUtils.join(new String[]{Constant.REDIS_LOGIN, casToken});
					authDTO = (AuthDTO) redisTemplate.opsForValue().get(redisKey);
					authDTO.setErrorCount(authDTO.getErrorCount() + 1);
					if (authDTO.getErrorCount() >= csetvalue) {
						// 超过错误次数，锁定账号
						dzzg.setIlogon(0);
						dzzgMapper.update(dzzg, new LambdaQueryWrapper<Dzzg>().eq(Dzzg::getId, dzzg.getId()));
						response.sendRedirect(Constant.LOGIN_OUT_COUNT_PAGE);
					} else {
						// 未超过错误次数，更新redis中的错误次数
						redisTemplate.opsForValue().set(redisKey, authDTO);
						response.sendRedirect(Constant.LOGIN_MESSAGE_ERROR_PAGE);
					}
				}
			}
		} else {
			response.sendRedirect(Constant.LOGIN_MESSAGE_ERROR_PAGE);
		}
	}
}




