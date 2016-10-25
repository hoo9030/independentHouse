package independentHouse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import independentHouse.entity.User;
import independentHouse.service.UserService;

@Controller
public class loginController {
	
	@Autowired
	private UserService service;
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(@RequestParam String id,@RequestParam String password,Model model){
		User data = service.getUser(id);
		if (data!=null && data.getPass().equals(password) ) {
			
			model.addAttribute("user", data.getId());
			return "../../index";
		}
		else{
		return "redirect:#mymodal";
		}
	}
	@RequestMapping("logout")
	public String logout(String user,Model model){
		user = null;
		model.addAttribute("user",user);
		return "../../index";
	}
	
}
