package me.geekang.web;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import me.geekang.service.LogfileInfo;

@Controller
@RequestMapping(value={"/overview"})
@SessionAttributes(names={"map"})
public class OverviewController {
	 
	@RequestMapping(method=GET)
	public String index(Model model){
		model.addAttribute("map", LogfileInfo.getLogFileInfo());
		return "overview";
	}
}