package cn.value.erpreportbyspringboot.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import cn.value.erpreportbyspringboot.domain.Sysmenus;
import cn.value.erpreportbyspringboot.service.SysmenusService;
import cn.value.erpreportbyspringboot.mapper.SysmenusMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * @author Levine
 * @description 针对表【sysMenus】的数据库操作Service实现
 * @createDate 2023-05-04 10:55:23
 */
@Service
public class SysmenusServiceImpl extends ServiceImpl<SysmenusMapper, Sysmenus> implements SysmenusService {
	@Resource
	private SysmenusMapper sysmenusMapper;

	@Override
	public List<Sysmenus> selectByNameAndId(String name, Integer id) {
		List<Sysmenus> sysmenusList = sysmenusMapper.selectNoIpaidByNameAndId(name, id);
		if (Optional.ofNullable(sysmenusList).isPresent()) {
			List<Integer> ipidList = sysmenusList.stream().map(Sysmenus::getIpid).distinct()
					.collect(Collectors.toList());
			sysmenusList.addAll(
					sysmenusMapper.selectList(new LambdaQueryWrapper<Sysmenus>().in(Sysmenus::getId, ipidList)));

		}
		return sysmenusList;
	}
}




