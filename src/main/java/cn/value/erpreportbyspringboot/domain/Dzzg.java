package cn.value.erpreportbyspringboot.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

import java.io.Serializable;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.Date;

import lombok.Data;

/**
 *
 * @TableName dzZG
 */
@TableName(value = "dzZG")
@Data
public class Dzzg implements Serializable {
	private Integer id;

	private Integer ibmid;

	private String cbmbh;

	private String czgbh;

	private String czgxm;

	private String cbmmc;

	private String cxb;

	private Date ccsrq;

	private String cmz;

	private String csfz;

	private Date ccjgzrq;

	private Date cjcgzrq;

	private Date crdrq;

	private Date cqdhtrq;

	private Date chtsxrq;

	private String czw;

	private String czglx;

	private String cwhcd;

	private Date cbyrq;

	private String cbyxx;

	private String cbyzy;

	private String cjg;

	private String cxxdz;

	private String clxdh;

	private String mjkzk;

	private String mjlcf;

	private String mtczy;

	private String mbrjl;

	private Object gzp;

	private String cylbh;

	private String cbxbh;

	private Double nlggz;

	private Double nbzgz;

	private Double nfdgz;

	private Double ngwgz;

	private Double nwjbt;

	private Double nflbt;

	private Double nyybt;

	private Double nzfbt;

	private Double ngjj;

	private Double nylj;

	private Double nsyj;

	private Double nylf;

	private String mddqk;

	private Integer irelawithsys;

	private Integer iquality;

	private String czjmpy;

	private String czjmwb;

	private Integer tbzgid;

	private BigDecimal nnumber;

	private Integer icol;

	private String ckqpassword;

	private Integer kqgroupnameid;

	private String czubie;

	private Integer ifzr;

	private String czjzl;

	private String cworksect;

	private String ckqbm;

	private String ckqbh;

	private Integer iflr;

	private Integer iysr;

	private String cbianzhi;

	private String ciccard;

	private Integer irepairflag;

	private Integer ipunchcard;

	private String cusername;

	private String cshowname;

	private String calias;

	private String cbusphone;

	private String cmobphone;

	private String cnote;

	private Integer idisabled;

	private Integer ilogon;

	private Integer ichgpwd;

	private String cpassword;

	private Integer iissales;

	private String cworkqj;

	private String cpasswordhash;

	private String cweixin;

	private String cqq;

	private String cemail;

	private Integer izwid;

	private Integer iorgwidth;

	private Integer iorgheight;

	private Integer iorgcolor;

	private String cimei;

	/**
	 * timestamp 无法直接转为时间类型
	 */
	private String dsynstamp;

	private String clastlogintime;

	private Date dinfactory;

	private BigDecimal nannualleavehours;

	private String coldcode;

	private Date dannualleaveupdate;

	private String cfid;

	private String cgzzxmc;

	private BigDecimal noverproduceprice;

	private String cfkleve;

	private byte[] isynstamp;

	private static final long serialVersionUID = 1L;
}