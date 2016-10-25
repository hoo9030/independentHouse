package project.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import project.Entity.User;
import project.Service.UserService;

@Controller
public class loginController {
	
	@Autowired
	private UserService service;
	
	@RequestMapping(value="/login", method=RequestMethod.POST)
	public String login(@RequestParam String id,@RequestParam String password,Model model){
		User data = service.getUser(id);
		if (data!=null && data.getPass().equals(password) ) {
			
			model.addAttribute("user", data.getAddr());
			return "../index.jsp";
		}
		else{
		return "redirect:mymodal";
		}
	}
	
}
