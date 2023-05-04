package cn.value.erpreportbyspringboot.service;

import cn.value.erpreportbyspringboot.domain.Sysmenus;
import com.baomidou.mybatisplus.extension.service.IService;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author Levine
 * @description 针对表【sysMenus】的数据库操作Service
 * @createDate 2023-05-04 10:55:23
 */
public interface SysmenusService extends IService<Sysmenus> {
	List<Sysmenus> selectByNameAndId(String name, Integer id);
}
