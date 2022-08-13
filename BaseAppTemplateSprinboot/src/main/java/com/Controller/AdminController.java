package com.Controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.entity.Teacher;

@Controller
public class AdminController {
	
	@Autowired(required = true)
	 @GetMapping("/")
	 public String hello(@RequestParam(value="name",defaultValue="World",required = true) String name, Model model){
		 model.addAttribute("name",name);
		 return "index";
	 }
	 @GetMapping(value="/adminDashboard")
		public String showForm(Model m){
			m.addAttribute("t", new Teacher());
			return "adminDashboard";	
		}
	 @GetMapping(value="/AdminTeachers")
		public String showadminTeachers(Model m){
			m.addAttribute("t", new Teacher());
			return "AdminTeachers";
		}
//	 @PostMapping(value="/save")
//		public String save(@ModelAttribute("t")Teacher t){
//			tdao.addteacherdetails(t);
//			return "redirect:/AdminTeachers";
//		}
	 
	
	
}
