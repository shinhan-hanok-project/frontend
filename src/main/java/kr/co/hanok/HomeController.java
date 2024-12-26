package kr.co.hanok;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/hanok_list.do")	 
	public String hanok_list() {
		return "hanok_list";
	}
	
	@GetMapping("/home.do")	 
	public String home() {
		return "home";
	}
	
}
