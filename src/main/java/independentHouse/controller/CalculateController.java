package independentHouse.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import independentHouse.service.CalculateService;

@Controller
public class CalculateController {
	
	@Autowired
	private CalculateService service;

	@RequestMapping(value="calculate", method=RequestMethod.POST)
	public String calculate(@RequestParam int current, @RequestParam int target, @RequestParam int budget, @RequestParam int power, @RequestParam int price, Model model){
		
		int currentFee = service.calculateFee(current);
		int currentBudget = budget;
		int times = 0;
		
		for (;;) {
			budget -= price;
			if (budget <=0) {
				break;
			}
			times++;
		}
		
		int reduction = (int) (power * 3.5 * 30 * times / 1000);
		
		
		int resultFee = service.calculateFee(current-reduction);
		
		model.addAttribute("currentFee",currentFee);
		model.addAttribute("currentBudget",currentBudget);
		model.addAttribute("target",target);
		model.addAttribute("times",times);
		model.addAttribute("reduction",reduction);
		model.addAttribute("resultFee",resultFee);
		
		return "result";
	}
}
