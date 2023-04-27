package cn.value.erpreportbyspringboot.enums;

/**
 * @ClassName R
 * @Description 返回结果枚举
 * @Author Levine.X
 * @Date 2023/4/26 15:52
 * @Version 1.0
 */
public enum R {
    SUCCESS("0000", "执行成功"),
    ERROR("0001", "执行失败"),
    PARAM_VALID_ERROR("0201", "参数校验失败");


    private String code;
    private String message;

    public String index() {
        return this.code;
    }

    public String desc() {
        return this.message;
    }


    private R(String code, String message) {
        this.code = code;
        this.message = message;
    }

    public R setMessage(String message) {
        this.message = message;
        return this;
    }

    public static R getRByCode(String code) {
        R[] rList = values();
        int rSize = rList.length;
        for (int index = 0; index < rSize; ++index) {
            R r = rList[index];
            if (r.index().equals(code)) {
                return r;
            }
        }

        return null;
    }

}
