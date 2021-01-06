package com.dojosurveyproject.dojosurvey;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public String home() {
		return "index.jsp";
	}
	
	@RequestMapping(value="/result", method=RequestMethod.POST)
	public String result(@RequestParam(value="name")String name, @RequestParam(value="location")String location, @RequestParam(value="language")String language, @RequestParam(value="comment")String comment, HttpSession session, RedirectAttributes message){
		if(name.length()>1 && location.length()>1 && language.length()>1) {
			session.setAttribute("name", name);
			session.setAttribute("location", location);
			session.setAttribute("language", language);
			session.setAttribute("comment", comment);
			return "result.jsp";
		}else {
			message.addFlashAttribute("error", "the name is requierd");
			return "redirect:/";
		}

	}
}
