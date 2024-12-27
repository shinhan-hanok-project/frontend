package kr.co.hanok.customer;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CustomerServiceImpl implements CustomerService {
	@Autowired
	private CustomerMapper mapper;
	
	// 한옥 검색
	@Override
	public Map<String, Object> searchHanok(CustomerVO customerVO) {
		System.out.println("log : getHanokWithPagenation");
		int count = mapper.count(customerVO); // 총개수
        // 총페이지수
        int totalPage = count / 6;
        if (count % 6 > 0) totalPage++;
        List<CustomerVO> list = mapper.list(customerVO); // 목록
        
        Map<String, Object> map = new HashMap<>();
        map.put("count", count);
        map.put("totalPage", totalPage);
        map.put("list", list);
        
        // 하단에 페이징처리
        int endPage = (int)(Math.ceil(customerVO.getPage()/6.0)*6);
        int startPage = endPage - 5;
        if (endPage > totalPage) endPage = totalPage;
        boolean isPrev = startPage > 1;
        boolean isNext = endPage < totalPage;
        map.put("endPage", endPage);
        map.put("startPage", startPage);
        map.put("isPrev", isPrev);
		map.put("isNext", isNext);
		return map;
	}
	
}
