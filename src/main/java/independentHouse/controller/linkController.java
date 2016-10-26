package independentHouse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class linkController {

	@RequestMapping("about")
	public String about(String user, Model model){
		model.addAttribute("user", user);
		return "about";
	}
	@RequestMapping("start")
	public String start(String user, Model model){
		model.addAttribute("user", user);
		return "start";
	}
	
	@RequestMapping("signup")
	public String signup(String user, Model model){
		model.addAttribute("user", user);
		return "signup";
	}
	@RequestMapping("next")
	public String next(String user, Model model){
		model.addAttribute("user", user);
		return "next";
	}
}
