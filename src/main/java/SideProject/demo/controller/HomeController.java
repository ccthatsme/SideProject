package SideProject.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import SideProject.demo.JPARepo.UserRepo;
import SideProject.demo.entity.User;

@Controller
public class HomeController {
	
	@Autowired
	UserRepo ur;
	
	@RequestMapping("/")
	public ModelAndView home() {
		String x = "yes";
		return new ModelAndView("home", "test", x );
	}
	
	@RequestMapping("note-page")
	public ModelAndView notePage(){
		
		return new ModelAndView("addnotes", "userList", ur.findAll());
	}
	
	
}
