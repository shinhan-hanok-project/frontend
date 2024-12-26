package kr.co.hanok.owner;

import java.util.Map;

import kr.co.hanok.owner.*;

public interface OwnerService {

	Map<String, Object> list(OwnerVO vo);
	OwnerVO login(Map map);


}