package cn.value.erpreportbyspringboot.utils;

import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @ClassName CommonErrorException
 * @Description TODO
 * @Author Levine.X
 * @Date 2023/4/26 16:41
 * @Version 1.0
 */
@Data
@EqualsAndHashCode(callSuper = true)
public class CommonErrorException extends RuntimeException {
    private String message;

}
