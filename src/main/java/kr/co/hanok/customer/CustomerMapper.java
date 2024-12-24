package kr.co.hanok.customer;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface CustomerMapper {
	
	
	List<CustomerVO> list(CustomerVO vo);
	int count(CustomerVO vo);
	
	int idCheck(int customer_id);
	CustomerVO login(Map map);
}