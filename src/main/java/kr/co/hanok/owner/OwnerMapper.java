package kr.co.hanok.owner;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hanok.owner.OwnerVO;

@Mapper
public interface OwnerMapper {
	
	List<OwnerVO> list(OwnerVO vo);
	
	OwnerVO login(Map map);
	
}