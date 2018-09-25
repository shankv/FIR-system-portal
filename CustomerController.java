package com.luv2code.springdemo.controller;

import java.util.List;  

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.luv2code.springdemo.entity.Customer;
import com.luv2code.springdemo.entity.missing;
import com.luv2code.springdemo.service.CustomerService;

@Controller
@RequestMapping("/customer")
public class CustomerController {
     
	private static final String missing = null;

	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	
	
	
	// need to inject our customer service
	@Autowired
	private CustomerService customerService;
	
	@GetMapping("/list-user")
	public String listCustomers(Model theModel) {
		
		// get customers from the service
		List<Customer> theCustomers = customerService.getCustomers();
				
		// add the customers to the model
		theModel.addAttribute("customers", theCustomers);
		
		return "list-customers";
	}
	
	
	@GetMapping("/list-missing")
	public String listMissing(Model theModel)
	{
		List<missing> theMissing =customerService.getMissing();
         theModel.addAttribute("missing",theMissing);
         return"list-missing";
	}
	
	
	
	
	
	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		
		// create model attribute to bind form data
		Customer theCustomer = new Customer();
		
		theModel.addAttribute("customer", theCustomer);
		
		return "customer-form";
	}
	
	@PostMapping("/saveCustomer")
	public String saveCustomer(@Valid @ModelAttribute("customer") Customer theCustomer, BindingResult theBindingResult) {
		if(theBindingResult.hasErrors())
		{
			return "customer-form";
		}
		else{
		// save the customer using our service
		customerService.saveCustomer(theCustomer);	
		
		return "redirect:/customer/missingform";}
	}
	
	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("missingId") int theId,
									Model theModel) {
		
		// get the customer from our service
		missing theMissing = customerService.getMissing(theId);	
		
		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("missing", theMissing);
		
		// send over to our form		
		return "missing-update";
	}
	
	@RequestMapping("/status")
	public String status(Model themodel){
		missing themissing =new missing();
		themodel.addAttribute("missing", themissing);
		return"status";
	}
	
	@RequestMapping("/home")
	public String index(Model themodel){
		return"index";
	}
	@RequestMapping("/checkStatus")
	public String checkSatus( @RequestParam("id") int theId, Model theModel)
	{
		// get the customer from our service
				missing theMissing = customerService.getMissing(theId);	
				
				// set customer as a model attribute to pre-populate the form
				theModel.addAttribute("missing", theMissing);
				
				// send over to our form		
				return "showstatus";
	}
	
	@GetMapping("/delete")
	public String deleteCustomer(@RequestParam("customerId") int theId) {
		
		// delete the customer
		customerService.deleteCustomer(theId);
		
		return "redirect:/customer/list";
	}
	
	@RequestMapping("/missingform")
	public String missingForm(Model themodel)
	{
		missing themissing =new missing();
		themodel.addAttribute("missing", themissing);
		return "missing-form";
	}
	@RequestMapping("/saveMissing")
	public String saveMissing(@Valid @ModelAttribute("missing") missing themissing, BindingResult theBindingResult) {
		if(theBindingResult.hasErrors())
		{    
			int a = theBindingResult.getErrorCount();
			System.out.println("error"+a);
			System.out.println(theBindingResult.toString());
			return "missing-form";
		
		}
		else{
		// save the customer using our service
		customerService.saveMissing(themissing);	
		
		return "final";}
	}	
	
	@RequestMapping("/saveUpdate")
	public String saveUpdate(@Valid @ModelAttribute("missing") missing themissing, BindingResult theBindingResult) {
		if(theBindingResult.hasErrors())
		{    
			int a = theBindingResult.getErrorCount();
			System.out.println("error"+a);
			System.out.println(theBindingResult.toString());
			return "missing-form";
		
		}
		else{
		// save the customer using our service
		customerService.saveMissing(themissing);	
		
		return "redirect:/customer/list-missing";}
	}	
	
	@GetMapping("/finals")
	public String finals(@RequestParam("missingId") int theId,
									Model theModel) {
		
		
		
		// set customer as a model attribute to pre-populate the form
		theModel.addAttribute("missing", theId);
		
		// send over to our form		
		return "final";
	}
}










