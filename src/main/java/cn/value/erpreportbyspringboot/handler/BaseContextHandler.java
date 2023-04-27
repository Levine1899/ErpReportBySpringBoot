package cn.value.erpreportbyspringboot.handler;

import java.util.HashMap;
import java.util.Map;

/**
 * @ClassName BaseContextHandler
 * @Description 基础处理器
 * @Author Levine.X
 * @Date 2023/4/26 16:48
 * @Version 1.0
 */
public class BaseContextHandler {
    public static ThreadLocal<Map<String, Object>> threadLocal = new ThreadLocal();

    public BaseContextHandler() {
    }

    public static void set(String key, Object value) {
        Map<String, Object> map = (Map) threadLocal.get();
        if (map == null) {
            map = new HashMap();
            threadLocal.set(map);
        }

        ((Map) map).put(key, value);
    }

    public static Object get(String key) {
        Map<String, Object> map = (Map) threadLocal.get();
        if (map == null) {
            map = new HashMap();
            threadLocal.set(map);
        }

        return ((Map) map).get(key);
    }

    private static String returnObjectValue(Object value) {
        return value == null ? null : value.toString();
    }

    public static void remove() {
        threadLocal.remove();
    }

    public static String getObjectValue(Object obj) {
        return obj == null ? "" : obj.toString();
    }
}
