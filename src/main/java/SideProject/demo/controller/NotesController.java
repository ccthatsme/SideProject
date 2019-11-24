package SideProject.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import SideProject.demo.JPARepo.UserRepo;
import SideProject.demo.entity.User;

@SpringBootApplication
@Controller
public class NotesController {
	
	
	
	
	@Autowired
	UserRepo ur;
	User u;
	
	
	@RequestMapping("note-submission")
	public ModelAndView addNote(@RequestParam("date") String Date, @RequestParam("note") String Note) {
		u = new User(Date, Note);
	ur.save(u);
	
	List<User> userList = ur.findAll();
	
	
	
	ModelAndView mv = new ModelAndView("addnotes", "userList", userList);
	
	return mv;
	}
	
	@RequestMapping("specific")
	public ModelAndView goToSpecificNote(@RequestParam("id") int id) {
		u = ur.getOne(id);
		List<User> userList = ur.findAll();
		ModelAndView mv = new ModelAndView("specificnote", "User", u);
		mv.addObject(userList);
		return mv;
	}
	
	@RequestMapping("edit")
	public ModelAndView goToEditNote(@RequestParam("id") int id) {
		User specUser = ur.getOne(id);
		ModelAndView mv = new ModelAndView("editnote", "User", specUser);

		
		return mv;
		
	}
	
	@RequestMapping("edit-note")
	public ModelAndView submitEditedNote(@RequestParam("id") int id, @RequestParam("date") String Date, @RequestParam("note") String Note) {
//id wont pass through maybe use this? 	<td><a href="edit-note?id=${User.id }">${User.date}</a></td>	
	u = ur.getOne(id);
		u.setDate(Date);
		u.setNote(Note);
		ur.save(u);
		
		
		ModelAndView mv = new ModelAndView("home");
		
		
		return mv;
	}
	
//	@RequestMapping("/details")
//	public ModelAndView details(@PathVariable("{p.id}") int id) {
//		String url = "https://gc-parks.surge.sh/api/parks/" + id + ".json";
//		details details = rt.getForObject(url, details.class);
//		ModelAndView mv = new ModelAndView("details", "detail", details.getId());
//		return mv;
//	}


}
