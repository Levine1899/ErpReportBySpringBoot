package cn.value.erpreportbyspringboot.handler;

import cn.value.erpreportbyspringboot.enums.R;
import cn.value.erpreportbyspringboot.utils.ApiValidatorException;
import cn.value.erpreportbyspringboot.utils.CommonErrorException;
import cn.value.erpreportbyspringboot.utils.response.Response;
import org.springframework.context.support.DefaultMessageSourceResolvable;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ResponseBody;

import java.beans.PropertyEditorSupport;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


/**
 * @ClassName WebExceptionHandler
 * @Description Web异常处理
 * @Author Levine.X
 * @Date 2023/4/26 16:50
 * @Version 1.0
 */
@ControllerAdvice
@ResponseBody
public class WebExceptionHandler {
    private static final DateTimeFormatter LOCAL_DATE_TIME_PATTERN = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
    private static final DateTimeFormatter LOCAL_DATE_PATTERN = DateTimeFormatter.ofPattern("yyyy-MM-dd");

    public WebExceptionHandler() {
    }

    @InitBinder
    public void initWebBinder(WebDataBinder webDataBinder) {
        webDataBinder.registerCustomEditor(LocalDateTime.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) throws IllegalArgumentException {
                this.setValue(LocalDateTime.parse(text, WebExceptionHandler.LOCAL_DATE_TIME_PATTERN));
            }
        });
        webDataBinder.registerCustomEditor(LocalDateTime.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) throws IllegalArgumentException {
                this.setValue(LocalDateTime.parse(text, WebExceptionHandler.LOCAL_DATE_PATTERN));
            }
        });
    }

    @ExceptionHandler({MethodArgumentNotValidException.class})
    public Response bindException(MethodArgumentNotValidException bindException) {
        String errorMsg = (String) bindException.getBindingResult().getAllErrors().stream().map(DefaultMessageSourceResolvable::getDefaultMessage).findFirst().orElse("参数校验失败");
        return Response.error(errorMsg);
    }

    @ExceptionHandler
    public Response exception(Exception e) {
        return Response.error(R.PARAM_VALID_ERROR);
    }


    @ExceptionHandler
    public Response commonErrorException(CommonErrorException e) {
        return Response.error(e.getMessage());
    }

    @ExceptionHandler
    public Response apiValidatorException(ApiValidatorException e) {
        return Response.error(R.getRByCode(e.getCode()));
    }

}
