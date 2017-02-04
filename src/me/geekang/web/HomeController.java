package me.geekang.web;

import static org.springframework.web.bind.annotation.RequestMethod.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value={"/"})
public class HomeController {

	@RequestMapping(method=GET)
	public String index(){
		return "index";
	}
}