package cn.value.erpreportbyspringboot.controller;

import cn.value.erpreportbyspringboot.common.Constant;
import cn.value.erpreportbyspringboot.domain.Sysmenus;
import cn.value.erpreportbyspringboot.service.DzzgService;
import cn.value.erpreportbyspringboot.service.SysmenusService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @ClassName LoginController
 * @Description TODO
 * @Author Levine.X
 * @Date 2023/4/27 13:26
 * @Version 1.0
 */
@Controller
@RequestMapping("/login")
public class LoginController {
	@Resource
	private DzzgService dzzgService;
	@Resource
	private SysmenusService sysmenusService;

	/**
	 * 登录
	 *
	 * @param request
	 * @param response
	 * @throws IOException
	 * @Desc 错误10次，锁定账号
	 */
	@RequestMapping("")
	public void login(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		String name = request.getParameter("username");

		if (name == null) {
			response.sendRedirect(Constant.LOGIN_PAGE);
		} else {
			// 调用service处理业务逻辑
			dzzgService.login(request, response);
		}
	}

	@RequestMapping("/getBanci")
	public void getShift(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=UTF-8");
		// TODO 获取班次 不绑定其他信息

	}

	@RequestMapping({"/getPower"})
	@ResponseBody
	public List<Sysmenus> getMenu(HttpServletRequest request) {
		String name = request.getParameter("name");
		Integer id = Integer.parseInt(request.getParameter("id"));
		List<Sysmenus> sysmenusList = null;
		if (name != null && id != null) {
			sysmenusList = sysmenusService.selectByNameAndId(name, id);
		}
		return sysmenusList;
	}
}
