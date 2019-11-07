package com.exam.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController2 {
	
	@GetMapping (value = "/")
	public ModelAndView home() {
		return new ModelAndView("index");
	}
	
	@GetMapping(value = "/index")
	public ModelAndView index() {
		return new ModelAndView("index");
	}
	
	@GetMapping(value = "/about")
	public ModelAndView about() {
		return new ModelAndView("about");
	}
	
	@GetMapping(value = "/about_admin")
	public ModelAndView aboutadmin() {
		return new ModelAndView("about_admin");
	}
	

	
	@GetMapping(value = "/employee_registration")
	public ModelAndView employee_registration() {
		return new ModelAndView("employee_registration");
	}
	
	@GetMapping(value = "/employee_registration_admin")
	public ModelAndView employee_registration_admin() {
		return new ModelAndView("employee_registration_admin");
	}
	
	@GetMapping(value = "/employeeAllowance")
	public ModelAndView employeeAllowance() {
		return new ModelAndView("employeeAllowance");
	}
	
//	@GetMapping(value = "/employee_edit_admin")
//	public ModelAndView employee_edit_admin() {
//		return new ModelAndView("employee_edit_admin");
//	}
	
	@GetMapping(value = "/employeeAllowanceDeduction")
	public ModelAndView employeeAllowanceDeduction() {
		return new ModelAndView("/employeeAllowanceDeduction");
	}
	
	
	@GetMapping(value = "/contact")
	public ModelAndView contact() {
		return new ModelAndView("contact");
	}
	
	@GetMapping(value = "/logout")
	public ModelAndView logout() {
		return new ModelAndView("login");
	}
	
	@GetMapping(value = "/login-success-admin")
	public ModelAndView loginsuccessadmin() {
		return new ModelAndView("login-success-admin");
	}
	
	
	@GetMapping(value = "/register")
	public ModelAndView user1Registration() {
		return new ModelAndView("user1Registration");
	}
	
	
	@GetMapping(value = "/payment")
	public ModelAndView payment() {
		return new ModelAndView("payment");
	}
	
	@GetMapping(value = "/employeeSalarySheet")
	public ModelAndView employeeSalarySheet() {
		return new ModelAndView("employeeSalarySheet");
	}
	
	@GetMapping(value = "/employeeSalarySheetUser")
	public ModelAndView employeeSalarySheetUser() {
		return new ModelAndView("employeeSalarySheetUser");
	}
	
	
	@GetMapping(value = "/salarySheetById")
	public ModelAndView salarySheetById() {
		return new ModelAndView("salarySheetById");
	}
	
	@GetMapping(value = "/EmployeeDetailsById")
	public ModelAndView EmployeeDetailsById() {
		return new ModelAndView("EmployeeDetailsById");
	}
	
	@GetMapping(value = "/Employee_ta_ById")
	public ModelAndView Employee_ta_ById() {
		return new ModelAndView("Employee_ta_ById");
	}
	
	@GetMapping(value = "/Employee_td_ById")
	public ModelAndView Employee_td_ById() {
		return new ModelAndView("Employee_td_ById");
	}



	
	@GetMapping(value = "/totalAllowanceReport")
	public ModelAndView totalAllowanceReport() {
		return new ModelAndView("totalAllowanceReport");
	}
	
	
	@GetMapping(value="/reportparameter")
	public ModelAndView reportparameter() {
		return new ModelAndView("reportparameter");
	}
	
	@GetMapping(value="/email")
	public ModelAndView email() {
		
		return new ModelAndView("email");
	}
	

	

}
