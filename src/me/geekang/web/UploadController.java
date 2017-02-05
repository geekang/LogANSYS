package me.geekang.web;

import static org.springframework.web.bind.annotation.RequestMethod.*;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value={"/upload"})
public class UploadController {

	@RequestMapping(method=GET)
	public String index(){
		return "upload";
	}
	
	@RequestMapping(method=POST)
	public String login(){
		return "redirect:/upload";
	}
}