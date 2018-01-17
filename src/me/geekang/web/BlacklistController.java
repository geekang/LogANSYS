package me.geekang.web;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import me.geekang.db.Dml;
import me.geekang.service.Blacklist;
import me.geekang.var.Var;

@Controller
@RequestMapping(value = { "/blacklist" })
public class BlacklistController {

	@RequestMapping(method = GET)
	public String index(Model model) {
		model.addAttribute("map", Var.getLogList());
		return "blacklist";
	}

	@RequestMapping(value = "tableajax", produces = "text/html;charset=UTF-8")
	@ResponseBody
	public String tableDemoAjax(@RequestParam String aoData) {
		return Blacklist.tableAjax(aoData);
	}

	@RequestMapping(value = "edit", method = POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String blacklist(@RequestParam("id") String id,@RequestParam("ip") String ip, @RequestParam("m") String m, @RequestParam("ua") String ua,
			@RequestParam("url") String url, @RequestParam("remarks") String remarks) {

		Map<String,String> items = new HashMap<String,String>();
		items.put("id", id);
		items.put("ip", ip);
		items.put("m", m);
		items.put("ua", ua);
		items.put("url", url);
		items.put("remarks", remarks);
		
		Dml.blackListUpdate(items);
		return "{}";
	}
	
	@RequestMapping(value = "delete", method = POST, produces = "text/json;charset=UTF-8")
	@ResponseBody
	public String whitelist(@RequestParam("id") String id) {
		
		Dml.blackListDelete(id);
		return "{}";
	}
}