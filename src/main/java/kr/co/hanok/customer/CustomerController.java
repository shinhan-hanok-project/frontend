package kr.co.hanok.customer;


import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import kr.co.project.member.MemberVO;

@Controller
public class CustomerController {
	
	@Autowired
	private CustomerService service;	
	
	@GetMapping("/hanok_list.do")	 
	public String hanok_list() {
		return "hanok_list";
	}
	
	@PostMapping("/hanok_search.do")	 
	public void hanok_search(CustomerVO customerVO, Model model, HttpSession sess) {
		// VO 객체를 통해 검색 조건 전달
        List<CustomerVO> hanokList = CustomerService.searchHanok(customerVO);
        // 결과를 JSP로 전달
        model.addAttribute("hanokList", hanokList);
        return "redirect:/hanok_list.do";
	}
}