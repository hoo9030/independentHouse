package independentHouse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import independentHouse.service.UserService;

@Controller
public class signupController {
	
	@Autowired
	private UserService service;
	
	@RequestMapping(value="signup", method=RequestMethod.POST)
	public String signup(@RequestParam String id, @RequestParam String pass, @RequestParam String addr, Model model){
		service.signup(id, pass, addr);
		return "../../index";
		
	}
}
