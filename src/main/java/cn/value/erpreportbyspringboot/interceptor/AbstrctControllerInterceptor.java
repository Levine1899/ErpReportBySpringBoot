package cn.value.erpreportbyspringboot.interceptor;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @ClassName AbstrctControllerInterceptor
 * @Description TODO
 * @Author Levine.X
 * @Date 2023/4/28 14:13
 * @Version 1.0
 */
public abstract class AbstrctControllerInterceptor implements HandlerInterceptor {

    protected abstract boolean controllerMethodPreHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws IOException;

    @Override
    public final boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        //如果是controller的方法handler为HandlerMethod
        //如果是资源类则handler为org.springframework.web.servlet.resource.ResourceHttpRequestHandler
        if (handler instanceof HandlerMethod) {
            return controllerMethodPreHandle(request, response, handler);
        }
        //否则不拦截
        return true;
    }
}