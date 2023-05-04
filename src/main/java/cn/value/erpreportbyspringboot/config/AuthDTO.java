package cn.value.erpreportbyspringboot.config;

import lombok.Data;

import java.io.Serializable;

/**
 * @ClassName AuthApiDTO
 * @Description TODO
 * @Author Levine.X
 * @Date 2023/4/27 14:34
 * @Version 1.0
 */
@Data
public class AuthDTO implements Serializable {
	private static final long serialVersionUID = 1L;

	private Integer userId;
	/**
	 * 获取到的token
	 */
	private String accessToken;
	/**
	 * 状态码
	 */
	private Integer code;
	/**
	 * 状态信息
	 */
	private String message;
	/**
	 * 错误次数
	 */
	private Integer errorCount;
}
