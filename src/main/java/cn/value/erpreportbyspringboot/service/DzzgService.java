package cn.value.erpreportbyspringboot.service;

import cn.value.erpreportbyspringboot.domain.Dzzg;
import com.baomidou.mybatisplus.extension.service.IService;
import org.apache.ibatis.annotations.Mapper;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @author Levine
 * @description 针对表【dzZG】的数据库操作Service
 * @createDate 2023-05-04 10:51:18
 */
public interface DzzgService extends IService<Dzzg> {
	void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException;
}
