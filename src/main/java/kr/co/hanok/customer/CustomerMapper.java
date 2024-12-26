package kr.co.hanok.customer;

import java.sql.Timestamp;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CustomerMapper {
	List<CustomerVO> list(CustomerVO customerVO);
	//한옥 검색
	List<CustomerVO> searchHanok(CustomerVO customerVO);
	//검색 후 한옥 수
	int count(CustomerVO customerVO);
}