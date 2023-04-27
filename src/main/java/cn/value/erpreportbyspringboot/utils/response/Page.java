package cn.value.erpreportbyspringboot.utils.response;

import lombok.Data;

import java.io.Serializable;
import java.util.List;

/**
 * @ClassName Page
 * @Description 分页基础类
 * @Author Levine.X
 * @Date 2023/4/27 11:18
 * @Version 1.0
 */
@Data
public class Page<T> implements Serializable {
    private Integer pageNo;
    private Integer pageSize;
    private Long pageTotal;
    private List<T> data;
    private Long total;

    public void setPageTotal(Long total, Integer pageSize) {
        this.pageTotal = total % pageSize == 0 ? (total / pageSize) : (total / pageSize + 1);
    }
}
