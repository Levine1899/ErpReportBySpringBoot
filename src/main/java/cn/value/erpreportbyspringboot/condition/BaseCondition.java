package cn.value.erpreportbyspringboot.condition;

import cn.hutool.core.date.DateUtil;
import lombok.Data;

import javax.validation.constraints.PastOrPresent;
import java.util.ArrayList;
import java.util.Date;


/**
 * @ClassName BaseCondition
 * @Description 基础查询条件
 * @Author Levine.X
 * @Date 2023/4/26 13:34
 * @Version 1.0
 */
@Data
public class BaseCondition {
    private Long id;
    private ArrayList<Long> deleteIds;
    @PastOrPresent
    private Date startDate;
    private Date endDate;

    public void setStartDate(Long startDate) {
        if (startDate != null) {
            this.startDate = DateUtil.date(startDate);
        } else {
            this.startDate = null;
        }
    }

    public void setEndDate(Long endDate) {
        if (endDate != null) {
            this.endDate = DateUtil.date(endDate);
        } else {
            this.endDate = null;
        }
    }

}
