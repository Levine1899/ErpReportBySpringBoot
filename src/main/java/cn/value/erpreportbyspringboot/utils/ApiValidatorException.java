package cn.value.erpreportbyspringboot.utils;

import cn.value.erpreportbyspringboot.enums.R;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @ClassName ApiValidatorException
 * @Description TODO
 * @Author Levine.X
 * @Date 2023/4/26 16:43
 * @Version 1.0
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class ApiValidatorException extends RuntimeException {
    private String code;
	public ApiValidatorException(String code, String message) {
		super(message);
		this.code = code;
	}

	public ApiValidatorException(R r) {
		super(r.desc());
		this.code = r.index();
	}
}
