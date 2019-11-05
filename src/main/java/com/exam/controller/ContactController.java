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

import com.exam.model.Contact;
import com.exam.model.Employee;
import com.exam.service.ContactService;


@Controller
public class ContactController {
	

	
	
	@Autowired
	ContactService contactService;
    
   
    @PostMapping("/contactSave")
    public ModelAndView userRegistration(HttpServletRequest request) {
    	
        Map<String, Object> model = new HashMap<>();
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String subject = request.getParameter("subject");
        String message = request.getParameter("message");
        
        
        Contact contact = new Contact();
        
        contact.setName(name);
        contact.setEmail(email);;
        contact.setSubject(subject);
        contact.setMessage(message);
       
      
        contact = contactService.save(contact);
        
        if (contact != null) {
            model.put("success", true);
            model.put("message", "Save Successfully");
            return new ModelAndView("contact", model);
        }else {
            model.put("error", false);
            model.put("message", "Save failed");
            return new ModelAndView("contact", model);
        }
    }
    
    

    @GetMapping("/showUserfeedback")
    public ModelAndView showAll() {
        Map<String, Object> model = new HashMap<>();
        List <Contact> entityList  =  contactService.getAll();
        model.put("contactList", entityList);
        return new ModelAndView("/showUserfeedback", model);
    }
    
   
    
    /*@GetMapping("/email/{id}")
    public ModelAndView edit(@PathVariable long id) {
        Map<String, Object> model = new HashMap<>();
       
        Contact entityList  =  contactService.getById(id);
        model.put("contactList", entityList);
        return new ModelAndView("email", model);
    }*/

    
    
}



