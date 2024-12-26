package kr.co.hanok.admin;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hanok.admin.AdminVO;

@Mapper
public interface AdminMapper {
	

	List<AdminVO> list(AdminVO vo);
	AdminVO login(Map map);
	
}