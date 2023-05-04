package cn.value.erpreportbyspringboot.interceptor;

import cn.value.erpreportbyspringboot.common.Constant;
import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang3.StringUtils;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Objects;
import java.util.concurrent.TimeUnit;

/**
 * @ClassName LoginInterceptor
 * @Description 登录拦截器
 * @Author Levine.X
 * @Date 2023/4/27 14:05
 * @Version 1.0
 */
@Slf4j
public class LoginInterceptor implements HandlerInterceptor {
	@Resource
	RedisTemplate<String, Object> redisTemplate;

	/**
	 * 前置拦截器，判断用户是否登录
	 *
	 * @param request
	 * @param response
	 * @param handler
	 * @return
	 * @throws Exception
	 */
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// 从cookie获取登录信息，使用redis进行校验
		HttpSession session = request.getSession(false);
		String token = session.getAttribute("token") == null ? "" : session.getAttribute("token").toString();

		try {
			if (StringUtils.isNotBlank(token)) {
				// 从redis中获取用户信息
				String redisKey = StringUtils.join(new String[]{Constant.REDIS_LOGIN, token});
				Object loginMessage = redisTemplate.opsForValue().get(redisKey);
				// 转为AuthDTO对象
				if (Objects.nonNull(loginMessage)) {
					// 重置redis过期时间
					redisTemplate.expire(redisKey, Constant.REDIS_EXPIRE_TIME, TimeUnit.MINUTES);
					return true;
				}
			}
		} catch (Exception e) {
			log.error("GET CAS PROFILE ERROR: {}", e);
			String redisKey = StringUtils.join(new String[]{Constant.REDIS_LOGIN, token});
			redisTemplate.delete(redisKey);
			response.sendRedirect(Constant.LOGIN_PAGE);
		}
		response.sendRedirect(Constant.LOGIN_PAGE);
		return false;
	}
}

