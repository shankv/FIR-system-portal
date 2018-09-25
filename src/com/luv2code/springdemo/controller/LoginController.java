package com.luv2code.springdemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.luv2code.springdemo.entity.LoginBean;

@Controller
@RequestMapping("/login")
public class LoginController {
	 @RequestMapping(value = "/Login", method = RequestMethod.GET)
	  public String init(Model model) {
	    model.addAttribute("msg", "Please Enter Your Login Details");
	    return "Login";
	  }
	  @RequestMapping(value="/aa", method = RequestMethod.POST)
	  public String submit(Model model, @ModelAttribute("loginBean") LoginBean loginBean) {
	    if (loginBean != null && loginBean.getUserName() != null && loginBean.getPassword() != null) {
	      if (loginBean.getUserName().equals("shashank") && loginBean.getPassword().equals("verma")) {
	        model.addAttribute("msg", loginBean.getUserName());
	        return "redirect:/customer/list-missing";
	      } else {
	        model.addAttribute("error", "Invalid Details");
	        return "Login";
	      }
	    } else {
	      model.addAttribute("error", "Please enter Details");
	      return "Login";
	    }
	  }

}
