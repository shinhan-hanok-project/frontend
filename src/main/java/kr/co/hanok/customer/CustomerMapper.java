package kr.co.hanok.customer;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;



@Mapper
public interface CustomerMapper {
	
	
	List<CustomerVO> list(CustomerVO vo);
	CustomerVO login(Map map);
	
	
	
}