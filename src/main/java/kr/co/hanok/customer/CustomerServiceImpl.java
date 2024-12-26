package kr.co.hanok.customer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerMapper mapper;
	
	// 한옥 검색
	@Override
	public List<CustomerVO> getHanokWithPagenation(CustomerVO customerVO) {
		System.out.println("log : getHanokWithPagenation");
		return CustomerMapper.searchHanok(customerVO);
	}
	
}
