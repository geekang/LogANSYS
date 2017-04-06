package me.geekang.web;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import me.geekang.service.Sum;

@Controller
@RequestMapping(value={"/sum-flow"})
@SessionAttributes(names={"map"})
public class SumFlowController {
	 
	@RequestMapping(method=GET)
	public String index(Model model){
		model.addAttribute("map", Sum.flow());
		model.addAttribute("map200301304", Sum.flow200301304());
		model.addAttribute("map404", Sum.flow404());
		model.addAttribute("map500", Sum.flow500());
		return "sum-flow";
	}
}