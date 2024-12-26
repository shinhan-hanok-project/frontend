package kr.co.hanok.owner;

import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import kr.co.hanok.owner.OwnerVO;

@Mapper
public interface OwnerMapper {
	
	OwnerVO ownerlogin(Map map);
	
}