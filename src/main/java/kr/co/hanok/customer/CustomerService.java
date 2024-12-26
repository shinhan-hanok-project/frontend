package kr.co.hanok.customer;

import java.util.List;

public interface CustomerService {
	// 한옥 검색 리스트
	List<CustomerVO> getHanokWithPagenation(CustomerVO customerVO);
}