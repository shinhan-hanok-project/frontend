package kr.co.hanok.customer;

import java.util.Map;

import kr.co.hanok.customer.*;

public interface CustomerService {
	
	Map<String, Object> list(CustomerVO vo);

	CustomerVO login(Map map);

}

