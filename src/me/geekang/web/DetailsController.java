package me.geekang.web;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import me.geekang.service.Details;
import me.geekang.var.Var;

@Controller
@RequestMapping(value={"/details"})
public class DetailsController {

	@RequestMapping(method=GET)
	public String index(Model model){
		model.addAttribute("map", Var.getLogList());
		return "details";
	}
	
	@RequestMapping(value="tableajax",produces="text/html;charset=UTF-8")
	@ResponseBody
	public String tableDemoAjax(@RequestParam String aoData) {
		return Details.tableAjax(aoData);
	}
}