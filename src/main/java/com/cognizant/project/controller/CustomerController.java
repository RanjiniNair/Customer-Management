package com.cognizant.project.controller;

import java.util.List;

import javax.validation.Valid;

//import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.project.entities.Customer;
import com.cognizant.project.service.CustomerService;

@Controller
@RequestMapping("/customer")

public class CustomerController {
	@Autowired
	CustomerService customerService;

	@GetMapping("/showloginForm")
	public String showloginForm(Model themodel)
	{
		
		return "login";
	}
	
	@PostMapping("/loginCustomer")
	public String loginCustomer(@RequestParam("username") String user,@RequestParam("password")String password)
	{
		if(user.equalsIgnoreCase("admin")&&(password.equalsIgnoreCase("qwerty")))
		{
		return "redirect:/customer/list";
	}
		else {
			 return "error-page"; 
		}
			
		}
	@RequestMapping("/list")
	public String listCustomers(Model themodel) {
		List<Customer> customers = customerService.getAllCustomers();
		themodel.addAttribute("customers", customers);
		System.out.println(customers);
		return "customer-list";
	}

	@GetMapping("/showFormForAdd")
	public String showFormForAdd(Model theModel) {
		Customer customer = new Customer();
		theModel.addAttribute("customer", customer);
		return "customer-form";
	}

	@PostMapping("/regCustomer")
	public String regCustomer(@Valid @ModelAttribute("customer") Customer theCustomer, BindingResult bind) {
		
		  System.out.println(bind); 
		  if (bind.hasErrors())
		  {
			  System.out.println(bind);
		  return "customer-form"; 
		  } 
		  else {
		 
			customerService.regCustomer(theCustomer);
			return "redirect:/customer/list";
		  }
	}

	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam("customerId") int theId, Model theModel) {

		Customer theCustomer = customerService.getCustomer(theId);
		theModel.addAttribute("customer", theCustomer);
		return "customer-form";

	}

	@RequestMapping("/delete")
	public String delete(@RequestParam("customerId") int theId) {
		customerService.deleteCustomer(theId);

		return "redirect:/customer/list";
	}
	
	@GetMapping("/searchCustomer")
	public String searchCustomer(@RequestParam("val")String val,Model theModel)
	{
		List<Customer> searchList=customerService.getCustomerbyNameOrId(val);
		theModel.addAttribute("customers",searchList);
		return "customer-list";
	}
}
