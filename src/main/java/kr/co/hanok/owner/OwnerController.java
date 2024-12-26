package kr.co.hanok.owner;


import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.hanok.customer.CustomerVO;

@Controller
public class OwnerController {
	@Autowired
	private OwnerService service;	
	
	//ownerlogin

		@GetMapping("/owner/ownerlogin.do")
		public void login() {
			 return;
		}
		@PostMapping("/owner/ownerlogin.do")
		public String loginProcess(@RequestParam Map map, Model model, HttpSession sess) {
			OwnerVO vo = service.ownerlogin(map);
			if(vo == null) {
				model.addAttribute("msg", "사장님 아이디 비밀번호가 올바르지 않습니다.");
				model.addAttribute("url" , "owner_login.do");
				return "common/alert";	
			}else {
				sess.setAttribute("loginInfo", vo);
				return "redirect:index.do";
			}
			
		}
	
}