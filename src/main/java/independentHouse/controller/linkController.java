package independentHouse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class linkController {

	@RequestMapping("about")
	public String about(){
		return "about";
	}
	@RequestMapping("start")
	public String start(){
		return "start";
	}
	
	@RequestMapping("signup")
	public String signup(){
		return "signup";
	}
}
