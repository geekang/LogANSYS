package me.geekang.web;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

import java.util.HashMap;
import java.util.Iterator;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import me.geekang.service.Sum;

@Controller
@RequestMapping(value = { "/sum-area" })
@SessionAttributes(names = { "map" })
public class SumAreaController {

	@RequestMapping(method = GET)
	public String index(Model model) {
		HashMap<String, Integer> area = Sum.area();
		int max = 0;
		int next = 0;

		Iterator<String> iterator = area.keySet().iterator();
		if (iterator.hasNext()) {
			next = area.get(iterator.next());
			max = max > next ? max : next;
		}
		max = max / 700 * 600;

		model.addAttribute("map", Sum.area());
		model.addAttribute("max", max);
		return "sum-area";
	}
}