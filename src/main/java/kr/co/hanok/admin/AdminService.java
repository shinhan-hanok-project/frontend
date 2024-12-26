package kr.co.hanok.admin;

import java.util.Map;

import kr.co.hanok.admin.AdminVO;

public interface AdminService {
	
	Map<String, Object> list(AdminVO vo);

	AdminVO login(Map map);

}