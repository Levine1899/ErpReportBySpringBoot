package cn.value.erpreportbyspringboot.mapper;

import cn.value.erpreportbyspringboot.domain.Sysetup;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

/**
 * @author Levine
 * @description 针对表【sysetup】的数据库操作Mapper
 * @createDate 2023-05-04 11:08:05
 * @Entity cn.value.erpreportbyspringboot.domain.Sysetup
 */
@Mapper
public interface SysetupMapper extends BaseMapper<Sysetup> {
	Integer getCsetvalueByCsetname(@Param("csetname") String setname);
}




