package cn.value.erpreportbyspringboot.condition;

import lombok.Data;
import org.hibernate.validator.constraints.Range;

import javax.validation.constraints.DecimalMin;


/**
 * @ClassName PageableCondition
 * @Description 分页
 * @Author Levine.X
 * @Date 2023/4/26 13:36
 * @Version 1.0
 */
@Data
public class PageableCondition extends BaseCondition {
    // 参数校验
    @DecimalMin(value = "1", message = "页码最小值为1")
    private Integer pageNo = 1;
    @Range(min = 1, max = 100, message = "每页条数范围为1-100")
    private Integer pageSize = 10;
    private String sortType = "DESC";
    private String[] fields = new String[]{"id"};
    private Long startNo;
    private Long endNo;

    public Long getEndNo() {
        return (long) (pageNo * pageSize);
    }

    public Long getStartNo() {
        return (long) ((pageNo - 1) * pageSize);

    }


}
