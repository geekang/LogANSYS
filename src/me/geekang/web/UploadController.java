package me.geekang.web;

import static org.springframework.web.bind.annotation.RequestMethod.*;

import java.io.File;
import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import me.geekang.service.Init;
import me.geekang.util.Date;
import me.geekang.var.Var;

@Controller
@RequestMapping(value={"/upload"})
public class UploadController {

	@RequestMapping(method=GET)
	public String index(){
		return "upload";
	}
	
	@RequestMapping(method=POST)
	public String upload(@RequestParam("file") MultipartFile profilePicture){

		Var.setPath("G:/test/" + profilePicture.getOriginalFilename());
		long uploadTime = System.currentTimeMillis();
		Var.setUploadTime(Date.FormatDate(uploadTime, "yyyy-MM-dd hh:mm:ss"));
		Init.InitLogFile(Var.getPath());
		Var.setFileSize(Var.getPath());
		Var.setProcessingTime(System.currentTimeMillis() - uploadTime + "");
	    try {
			profilePicture.transferTo(new File(Var.getPath()));
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