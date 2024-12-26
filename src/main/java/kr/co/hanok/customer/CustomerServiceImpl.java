package kr.co.hanok.customer;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerMapper mapper;
	

	
	
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
