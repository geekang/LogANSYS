package me.geekang.web;

import static org.springframework.web.bind.annotation.RequestMethod.*;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value={"/upload"})
public class UploadController {

	@RequestMapping(method=GET)
	public String index(){
		return "upload";
	}
	
	@RequestMapping(method=POST)
	public String upload(@RequestParam("file") MultipartFile profilePicture){
	    try {
			profilePicture.transferTo(new File("G:/test/" + profilePicture.getOriginalFilename()));
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "redirect:/upload";
	}
}