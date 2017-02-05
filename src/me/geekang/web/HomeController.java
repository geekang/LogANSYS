package me.geekang.web;

import static org.springframework.web.bind.annotation.RequestMethod.*;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import me.geekang.form.User;

@Controller
@RequestMapping(value={"/"})
public class HomeController {

	@RequestMapping(method=GET)
	public String index(){
		return "index";
	}
	
	@RequestMapping(method=POST)
	public String login(User form, Model model){
		if("admin".equals(form.getUserName()) && "admin".equals(form.getPassword())){
			return "redirect:/upload";
		} else {
			return "index";
		}
		
	}
}