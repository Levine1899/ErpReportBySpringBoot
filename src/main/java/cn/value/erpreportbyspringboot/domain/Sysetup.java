package cn.value.erpreportbyspringboot.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Date;
import lombok.Data;

/**
 * 
 * @TableName sysetup
 */
@TableName(value ="sysetup")
@Data
public class Sysetup implements Serializable {
    /**
     * 
     */
    @TableId
    private String csetname;

    /**
     * 
     */
    private String cowner;

    /**
     * 
     */
    private String csettype;

    /**
     * 0-方略；1-全略
     */
    private String csetvalue;

    /**
     * 
     */
    private String csm;

    /**
     * 
     */
    private Integer iplant;

    /**
     * 
     */
    private Date dsynstamp;

    /**
     * 
     */
    private byte[] isynstamp;

    @TableField(exist = false)
    private static final long serialVersionUID = 1L;
}