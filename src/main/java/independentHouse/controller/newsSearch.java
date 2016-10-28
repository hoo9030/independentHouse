package independentHouse.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class newsSearch {

	@RequestMapping("/")
	public void newsSearch(){
		String url = "https://openapi.naver.com/v1/search/news.xml?query=전기요금&start=1&display=10";
	}
	
}
