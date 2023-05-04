package cn.value.erpreportbyspringboot.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;

import lombok.Data;

/**
 *
 * @TableName sysMenus
 */
@TableName(value = "sysMenus")
@Data
public class Sysmenus implements Serializable {
	/**
	 *
	 */
	@TableId
	private Integer id;

	/**
	 *
	 */
	private Integer ipid;

	/**
	 *
	 */
	private Integer ilevel;

	/**
	 *
	 */
	private Integer iindex;

	/**
	 *
	 */
	private String cname;

	/**
	 *
	 */
	private String ccaption;

	/**
	 *
	 */
	private String chint;

	/**
	 *
	 */
	private String cpackage;

	/**
	 *
	 */
	private String cformclass;

	/**
	 *
	 */
	private String cformname;

	/**
	 *
	 */
	private Integer isystem;

	/**
	 *
	 */
	private Integer itag;

	/**
	 *
	 */
	private Integer ishowmodal;

	/**
	 *
	 */
	private String cbtnname;

	/**
	 *
	 */
	private String cbtncaption;

	/**
	 *
	 */
	private String cowner;

	/**
	 *
	 */
	private Integer isingle;

	/**
	 *
	 */
	private String csingleflag;

	@TableField(exist = false)
	private static final long serialVersionUID = 1L;

}