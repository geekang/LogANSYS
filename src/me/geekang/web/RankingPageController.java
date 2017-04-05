package me.geekang.web;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import me.geekang.service.Ranking;

@Controller
@RequestMapping(value={"/ranking-page"})
@SessionAttributes(names={"map"})
public class RankingPageController {
	 
	@RequestMapping(method=GET)
	public String index(Model model){
		model.addAttribute("map", Ranking.page());
		return "ranking-page";
	}
}