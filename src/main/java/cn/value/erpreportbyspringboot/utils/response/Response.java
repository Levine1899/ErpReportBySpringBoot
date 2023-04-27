package cn.value.erpreportbyspringboot.utils.response;

import cn.value.erpreportbyspringboot.enums.R;

import java.io.Serializable;


/**
 * @ClassName Response
 * @Description 返回结果
 * @Author Levine.X
 * @Date 2023/4/26 15:49
 * @Version 1.0
 */
public class Response<T> implements Serializable {
    public String code;
    public String message;
    public T data;

    public static final Response SUCCESS;
    public static final Response ERROR;

    static {
        SUCCESS = new Response(R.SUCCESS);
        ERROR = new Response(R.ERROR);
    }

    public Response(R r) {
        this.code = r.index();
        this.message = r.desc();
    }

    public Response(R r, T data) {
        this.code = r.index();
        this.message = r.desc();
        this.data = data;
    }

    public static <T> Response<T> success(T data) {
        return new Response(R.SUCCESS, data);
    }

    public static Response error(R r) {
        return new Response(r);
    }

    public static <T> Response<T> error(String message) {
        return new Response(R.PARAM_VALID_ERROR.setMessage(message));
    }

}
