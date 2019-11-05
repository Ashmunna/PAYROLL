package com.exam.controller;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import com.exam.model.Contact;
import com.exam.service.ContactServiceImpl;

@Controller
public class EmailController {
	
	@Autowired
	ContactServiceImpl contactServiceImpl;
	
	@Autowired
	JavaMailSender javaMailSender;
	
	@RequestMapping("/sendEmail")
    public ModelAndView sendEmail(@RequestParam("email") String email, @RequestParam("subject") String subject,
            @RequestParam("body") String body, Map<String, String> map) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(email);
        message.setSubject(subject);
        message.setText(body);       
        javaMailSender.send(message);
        System.out.println("Email........................ "+email+" "+subject+" "+body+"massage===========" +message);
        map.put("msg", "Sending Feedback Successfullly");
        return new ModelAndView("email", map);
    }
	@GetMapping("/email/{id}")
	public ModelAndView setEmail(@PathVariable ("id") long id) {
		
		Map<String, Object> model = new HashMap<>();
		Contact contact = contactServiceImpl.getById(id);
		model.put("email", contact);
		System.out.println(contact);
		return new ModelAndView("email",model);
	}
}