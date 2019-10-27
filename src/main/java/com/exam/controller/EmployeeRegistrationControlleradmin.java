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
import com.exam.model.EmployeeAllowances;
import com.exam.service.EmployeeAllowancesService;
import com.exam.service.EmployeeService;




@Controller
public class EmployeeRegistrationControlleradmin {
	
//	@InitBinder
//    public void dataInitBinder(WebDataBinder binder) {
//        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//        binder.registerCustomEditor(Date.class, "dob", new CustomDateEditor(format, false));
//        binder.registerCustomEditor(Date.class, "doh", new CustomDateEditor(format, false));
//    }
	
	
	@Autowired
    EmployeeService employeeService;
	
	@Autowired
	EmployeeAllowancesService employeeAllowancesService;
    
//    @Autowired
//    PasswordEncoder passwordEncoder;
   
    @PostMapping("/userRegistrationadmin")
    public ModelAndView userRegistrationadmin(HttpServletRequest request) {
    	
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
            return new ModelAndView("employee_registration_admin", model);
        }else {
            model.put("error", false);
            model.put("message", "Save failed");
            return new ModelAndView("employee_registration_admin", model);
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
    
    
    @GetMapping("/showUseradmin")
    public ModelAndView showAll() {
        Map<String, Object> model = new HashMap<>();
        List <Employee> entityList  =  employeeService.getAll();
        model.put("userList", entityList);
        return new ModelAndView("/showUseradmin", model);
    }
    
    
    @PostMapping("/showUseradmin/{id}")
    public ModelAndView getEmpById(HttpServletRequest request) {
        Map<String, Object> model = new HashMap<>();
        String search = request.getParameter("search");
        long id=Long.parseLong(search);
        Employee entityList  =  employeeService.getById(id);
        model.put("userList", entityList);
        return new ModelAndView("/employeeAllowance", model);
    }
    
    
    @PostMapping("/caculatSalary")
    public ModelAndView caculatSalary(HttpServletRequest request) {
    	
    	Map<String, Object> model = new HashMap<>();
        String search = request.getParameter("id");
        long id=Long.parseLong(search);
        Employee entityList  =  employeeService.getById(id);
        model.put("userList", entityList);
    	double basic_salary = Double.parseDouble(request.getParameter("basic_salary"));
    	int overtime_hour = Integer.parseInt(request.getParameter("overtime_hour"));
    	int overtime_rate = Integer.parseInt(request.getParameter("overtime_rate"));
    	int ov_amount= overtime_hour*overtime_rate;
    	request.setAttribute("ov_amount", String.valueOf(ov_amount));
    	double house_rent = Integer.parseInt(request.getParameter("house_rent"));
    	double houserent = basic_salary*(house_rent/100);
//    	System.out.println(houserent);
    	request.setAttribute("houserent", String.valueOf(houserent));
    	double medical_allowance = Integer.parseInt(request.getParameter("medical_allowance"));
    	double ma = basic_salary*(medical_allowance/100);
    	request.setAttribute("ma", String.valueOf(ma));
    	double transport_fund_allowance = Integer.parseInt(request.getParameter("transport_fund_allowance"));
    	double tfa = basic_salary*(transport_fund_allowance/100);
    	request.setAttribute("tfa", String.valueOf(tfa));
    	double other_allowances = Integer.parseInt(request.getParameter("other_allowances"));
    	double oa = basic_salary*(other_allowances/100);
    	request.setAttribute("oa", String.valueOf(oa));
//    	double total_salary = Integer.parseInt(request.getParameter("total_salary"));
    	double ts = (basic_salary + ov_amount + houserent + ma + tfa + oa);
    	request.setAttribute("ts", String.valueOf(ts));
    	
    	model.put("ov_amount", ov_amount);
    	model.put("houserent", houserent);
    	model.put("ma", ma);
    	model.put("tfa", tfa);
    	model.put("oa", oa);
    	model.put("ts", ts);
    	
    	
//    	int overtime_amount = Integer.parseInt(request.getParameter("overtime_amount"));
//    	int medical_allowance = Integer.parseInt(request.getParameter("medical_allowance"));
//    	int provident_fund_allowance = Integer.parseInt(request.getParameter("provident_fund_allowance"));
//    	int other_allowances = Integer.parseInt(request.getParameter("other_allowances"));
//    	int total_salary = Integer.parseInt(request.getParameter("total_salary"));
    	
    	
    	
    	
    	
//        String fName = request.getParameter("fName");
//        String sName = request.getParameter("sName");
//        String email = request.getParameter("email");
//        String address = request.getParameter("address");
//        String department = request.getParameter("department");
//        String designation = request.getParameter("designation");
//        String overtime_amount = request.getParameter("overtime_amount");
//        String houserenta = request.getParameter("houserenta");
//        String maa = request.getParameter("ma");
//        String ta = request.getParameter("tfa");
//        String othera = request.getParameter("oa");
//        String total_salary = request.getParameter("ts");
//        System.out.println(overtime_amount);
//        
//        EmployeeAllowances employeeallowances = new EmployeeAllowances();
//        
//        employeeallowances.setFirst_name(fName);
//        employeeallowances.setSurname(sName);
//        employeeallowances.setEmail(email);
//        employeeallowances.setAddress(address);
//        employeeallowances.setDepartment(department);
//        employeeallowances.setDesignation(designation);
//        employeeallowances.setOvertime_amount(Double.parseDouble(overtime_amount));
//        employeeallowances.setHouserent(Double.parseDouble(houserenta));
//        employeeallowances.setMa(Double.parseDouble(maa));
//        employeeallowances.setTfa(Double.parseDouble(ta));
//        employeeallowances.setOa(Double.parseDouble(othera));
//        employeeallowances.setTs(Double.parseDouble(total_salary));
//
//      
//        employeeallowances = employeeAllowancesService.save(employeeallowances);
//        
////        if (employee != null) {
////            model.put("success", true);
////            model.put("message", "Save Successful");
////            return new ModelAndView("/employeeAllowance", model);
////        }else {
////            model.put("error", false);
////            model.put("message", "Save failed");
////            return new ModelAndView("/employeeAllowance", model);
////        }
        
    	return new ModelAndView("/employeeAllowance",model);
        
    }
    




@PostMapping("/savesalary")
public ModelAndView saveSalary(HttpServletRequest request) {
	
	Map<String, Object> model = new HashMap<>();
	
	String fName = request.getParameter("fName");
   String sName = request.getParameter("sName");
   String email = request.getParameter("email");
   String address = request.getParameter("address");
   String department = request.getParameter("department");
   String designation = request.getParameter("designation");
   String basic_salary = request.getParameter("basic_salary");
   String overtime_amount = request.getParameter("overtime_amount");
   String houserenta = request.getParameter("houserenta");
   String maa = request.getParameter("ma");
   String ta = request.getParameter("tfa");
   String othera = request.getParameter("oa");
   String total_salary = request.getParameter("ts");
//   System.out.println(overtime_amount);
   
   EmployeeAllowances employeeallowances = new EmployeeAllowances();
   
   employeeallowances.setFirst_name(fName);
   employeeallowances.setSurname(sName);
   employeeallowances.setEmail(email);
   employeeallowances.setAddress(address);
   employeeallowances.setDepartment(department);
   employeeallowances.setDesignation(designation);
   employeeallowances.setBasic_salary(Double.parseDouble(basic_salary));
   employeeallowances.setOvertime_amount(Double.parseDouble(overtime_amount));
   employeeallowances.setHouserent(Double.parseDouble(houserenta));
   employeeallowances.setMa(Double.parseDouble(maa));
   employeeallowances.setTfa(Double.parseDouble(ta));
   employeeallowances.setOa(Double.parseDouble(othera));
   employeeallowances.setTs(Double.parseDouble(total_salary));

 
   employeeallowances = employeeAllowancesService.save(employeeallowances);
   
	   if (employeeallowances != null) {
	       model.put("success", true);
	       model.put("message", "Save Successful");
	       return new ModelAndView("/employeeAllowance", model);
	   }else {
	       model.put("error", false);
	       model.put("message", "Save failed");
	       return new ModelAndView("/employeeAllowance", model);
	   }
	}
}


