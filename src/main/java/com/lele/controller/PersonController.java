package com.lele.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.lele.po.Person;
import com.lele.service.PersonService;

@Controller
@RequestMapping("/person")
public class PersonController {
	@Resource
	private PersonService personService ;
	/**
	 * 增加person
	 * @param person
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value="/save",method=RequestMethod.POST)
	public String save(@RequestParam String name, @RequestParam int age){
		
		personService.save(name,age);
		return "success"; 
	}
	 
	 @RequestMapping(value="/query",method=RequestMethod.GET)
	 public String query(Model model){
		 List<Person> plist = personService.query();
		 model.addAttribute("plist", plist);
		 return "query";
	 }
	 
	 @RequestMapping(value="/queryByAge",method=RequestMethod.POST)
	 public String queryByAge(Model model,@ModelAttribute Person user){
		 List<Person> plist =  personService.queryByAge(user.getAge()); 
		 model.addAttribute("plist",plist);
		 return "queryByAge";
	 }
	 
	 @RequestMapping(value="/deleteByAge",method=RequestMethod.GET)
	public String  deleteByAge(Model model){
		 personService.deleteByAge(23);
		 List<Person> plist = personService.query();
		 model.addAttribute("plist", plist); 
		 return "query";
		 
	 }
	 
	 @RequestMapping(value="/queryById/update/{id}",method=RequestMethod.POST)
	 public ModelAndView update(@ModelAttribute Person user){
		 ModelAndView mav = new ModelAndView();
		 personService.update(user);
		 Person plist = personService.queryById(user.getId());
		 mav.addObject("person",plist);
		 mav.setViewName("update");
		 return mav;
	 }
	 
	 @RequestMapping(value="/queryById/{id}",method=RequestMethod.GET)
	 public String queryById(Model model,@ModelAttribute Person user){
		 Person person1 = new Person();
		 person1 = personService.queryById(user.getId());
		 model.addAttribute("person1",person1);
		 return "change";
	 }
	 
	
	 @RequestMapping(value="/delete/{id}",method=RequestMethod.GET)
	 public String delete(@ModelAttribute Person user){
		 personService.delete(user);
		 return "delete";
	 }
//	 @RequestMapping(value="/deleteByAgeDiy/{id}",method=RequestMethod.POST)
//	 public String deleteByAgeDiy(Model model,@ModelAttribute Person user){
//		personService.queryByAge(user.getAge());
//		 
//		 
//		 
//		 return "deleteByAgeDiy";
//	 }

}
