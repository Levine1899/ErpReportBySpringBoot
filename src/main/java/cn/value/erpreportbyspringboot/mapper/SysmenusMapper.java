package cn.value.erpreportbyspringboot.mapper;

import cn.value.erpreportbyspringboot.domain.Sysmenus;
import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
* @author Levine
* @description 针对表【sysMenus】的数据库操作Mapper
* @createDate 2023-05-04 10:55:23
* @Entity cn.value.erpreportbyspringboot.domain.Sysmenus
*/
@Mapper
public interface SysmenusMapper extends BaseMapper<Sysmenus> {
	List<Sysmenus> selectByNameAndId(@Param("name") String name, @Param("id") Integer id);

	List<Sysmenus> selectNoIpaidByNameAndId(@Param("name") String name, @Param("id") Integer id);
}




