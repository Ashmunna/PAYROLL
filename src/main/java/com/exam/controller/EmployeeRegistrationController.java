package com.exam.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import com.exam.model.Employee;
import com.exam.service.EmployeeService;




@Controller
public class EmployeeRegistrationController {
	
//	@InitBinder
//    public void dataInitBinder(WebDataBinder binder) {
//        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//        binder.registerCustomEditor(Date.class, "dob", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(Date.class, "doh", new CustomDateEditor(format, false));
//    }
	
	
	@Autowired
    EmployeeService employeeService;
    
//    @Autowired
//    PasswordEncoder passwordEncoder;
   
    @PostMapping("/userRegistration")
    public ModelAndView userRegistration(HttpServletRequest request) {
    	
        Map<String, Object> model = new HashMap<>();
        
        String fName = request.getParameter("fName");
        String sName = request.getParameter("sName");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String contact_number = request.getParameter("contact_number");
        String address = request.getParameter("address");
        String department = request.getParameter("department");
        String designation = request.getParameter("designation");
        String status = request.getParameter("status");
        String doh = request.getParameter("doh");
        String basic_salary = request.getParameter("basic_salary");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
     
		
//      Date date1 = new SimpleDateFormat("yyyy/MM/dd").parse(dob1);
//		Date date2 = new SimpleDateFormat("yyyy/MM/dd").parse(doh1);
        
        Employee employee = new Employee();
        
        employee.setFirst_name(fName);
        employee.setSurname(sName);
		employee.setDob(dob);
		
		
		employee.setGender(gender);
        employee.setEmail(email);
        employee.setContact_no(contact_number);
        employee.setAddress(address);
        employee.setDepartment(department);
        employee.setDesignation(designation);
        employee.setStatus(status);
        employee.setDoh(doh);
        employee.setBasic_salary(Double.parseDouble(basic_salary));
        employee.setUsername(username);
//      employee.setPassword(passwordEncoder.encode(password));
        employee.setPassword(password);
       
       

      
        employee = employeeService.save(employee);
        
        if (employee != null) {
            model.put("success", true);
            model.put("message", "Save Successful");
            return new ModelAndView("employee_registration", model);
        }else {
            model.put("error", false);
            model.put("message", "Save failed");
            return new ModelAndView("employee_registration", model);
        }
    }
    
    
    
   
    
    
    //Show Method
    
    
//    @GetMapping("/show")
//    public ModelAndView showAll() {
//        Map<String, Object> model = new HashMap<>();
//        List  employeeList  = (List) employeeService.getAll();
//        model.put("userList", employeeList);
//        return new ModelAndView("", model);
//    }
    
    
    @GetMapping("/showUser")
    public ModelAndView showAll() {
        Map<String, Object> model = new HashMap<>();
        List <Employee> entityList  =  employeeService.getAll();
        model.put("userList", entityList);
        return new ModelAndView("/showUser", model);
    }
    
    
    @GetMapping("/user/edit/{id}")
    public ModelAndView edituser(@PathVariable long id) {
        Map<String, Object> model = new HashMap<>();
       
        Employee entityList  =  employeeService.getById(id);
        model.put("userList", entityList);
        return new ModelAndView("/employee_edit_user", model);
    }
    
    @PostMapping("/userUpdate")
    public ModelAndView userUpdateadmin(HttpServletRequest request) {
    	
        Map<String, Object> model = new HashMap<>();
        
        String id = request.getParameter("id");
        String fName = request.getParameter("fName");
        String sName = request.getParameter("sName");
        String dob = request.getParameter("dob");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String contact_number = request.getParameter("contact_number");
        String address = request.getParameter("address");
        String department = request.getParameter("department");
        String designation = request.getParameter("designation");
        String status = request.getParameter("status");
        String doh = request.getParameter("doh");
        String basic_salary = request.getParameter("basic_salary");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
     
    //  Date date1 = new SimpleDateFormat("yyyy/MM/dd").parse(dob1);
//    	Date date2 = new SimpleDateFormat("yyyy/MM/dd").parse(doh1);
        
        Employee employee = new Employee();
        
        employee.setId(Long.parseLong(id));
        employee.setFirst_name(fName);
        employee.setSurname(sName);
    	employee.setDob(dob);
    	employee.setGender(gender);
        employee.setEmail(email);
        employee.setContact_no(contact_number);
        employee.setAddress(address);
        employee.setDepartment(department);
        employee.setDesignation(designation);
        employee.setStatus(status);
        employee.setDoh(doh);
        employee.setBasic_salary(Double.parseDouble(basic_salary));
        employee.setUsername(username);
    //  employee.setPassword(passwordEncoder.encode(password));
        employee.setPassword(password);
       
      
        employee = (Employee) employeeService.update(employee);
        
        System.out.println(employee);
        if (employee != null) {
            model.put("success", true);
            model.put("message", "Update Successfully");
            List <Employee> entityList  =  employeeService.getAll();
            model.put("userList", entityList);
            return new ModelAndView("/showUser", model);
        }else {
            model.put("error", false);
            model.put("message", "Save failed");
            List <Employee> entityList  =  employeeService.getAll();
            model.put("userList", entityList);
            return new ModelAndView("/showUser", model);
        }
    }
    
    @GetMapping("/user/delete/{id}")
    public ModelAndView delete(@PathVariable long id) {
        Map<String, Object> model = new HashMap<>();
        
        employeeService.delete(id);
        List <Employee> entityList  =  employeeService.getAll();
        model.put("userList", entityList);
        return new ModelAndView("/showUser", model);
    }
    
   
    
    

    
    
}



