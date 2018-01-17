package me.geekang.web;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import me.geekang.form.User;

/**	
 * 声明为一个控制器
 * 
 * @author Geekang
 *
 */
@Controller
@RequestMapping(value = { "/" })
public class HomeController {

	@RequestMapping(method = GET)
	public String index() {
		return "index";
	}

	@RequestMapping(method = POST)
	public String login(User form, Model model) {
		if ("admin".equals(form.getUserName()) && "admin".equals(form.getPassword())) {
			return "redirect:/upload";
		} else {
			return "index";
		}

	}
}