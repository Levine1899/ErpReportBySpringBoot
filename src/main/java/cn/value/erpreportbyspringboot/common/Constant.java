package cn.value.erpreportbyspringboot.common;

import org.springframework.stereotype.Component;

/**
 * @ClassName Constant
 * @Description 常量类
 * @Author Levine.X
 * @Date 2023/4/27 9:57
 * @Version 1.0
 */
@Component
public class Constant {
	public static final long REDIS_EXPIRE_TIME = 60L;
	public static final String REDIS_LOGIN = "VALUE:REPORT:DATA:LOGIN:";
	public static final String SUCCESS_PAGE = "jsp/SelectType.jsp";

	public static final String LOGIN_PAGE = "html/login.html";
	public static final String LOGIN_MESSAGE_ERROR_PAGE = "html/login.html?message=0";

	public static final String LOGIN_OUT_COUNT_PAGE = "html/login.html?message=5";

	public static final String LOGIN_WITHOUT_SHIFT_PAGE = "html/login.html?message=2";
}
