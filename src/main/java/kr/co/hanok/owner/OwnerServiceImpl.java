package kr.co.hanok.owner;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.hanok.customer.CustomerVO;

@Service
public class OwnerServiceImpl implements OwnerService {
	@Autowired
	private OwnerMapper mapper;

	
	@Override
	public OwnerVO ownerlogin(Map map) {
		return mapper.ownerlogin(map);
	}


	
}
