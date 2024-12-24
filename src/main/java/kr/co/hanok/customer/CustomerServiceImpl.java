package kr.co.hanok.customer;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerMapper mapper;
	
	@Override
	public boolean idCheck(int customer_id) {
		return mapper.idCheck(customer_id) >0 ? true : false;
		
		
	}
	
	@Override
	public CustomerVO login(Map map) {
		return mapper.login(map);
	}

	@Override
	public Map<String, Object> list(CustomerVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
