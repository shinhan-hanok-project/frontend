package kr.co.hanok.customer;

import java.util.List;
import java.util.Map;

public interface CustomerService {
	// 한옥 검색 리스트
	Map<String, Object> searchHanok(CustomerVO customerVO);
}