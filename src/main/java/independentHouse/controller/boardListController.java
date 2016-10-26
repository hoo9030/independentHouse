package independentHouse.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import independentHouse.entity.Board;
import independentHouse.service.boardListService;

@Controller
public class boardListController {
	
	@Autowired
	private boardListService service;
	
	@RequestMapping("/board")
	public String showBoardList(Model model){
		model.addAttribute("list",service.showBoardList());
		return "board";
	}
}
