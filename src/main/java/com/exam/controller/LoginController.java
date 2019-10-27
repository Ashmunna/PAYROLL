package com.exam.controller;

import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


import com.exam.model.UserInfo;
import com.exam.service.UserInfoService;

@RestController
public class LoginController {
	@Autowired
	PasswordEncoder passwordEncoder;
	@Autowired
	UserInfoService userInfoService;

	@PostMapping("/register")
	public UserInfo register(@RequestBody @Valid UserInfo userInfo, BindingResult results) {

		if (!results.hasErrors()) {
			userInfo.setPassword(passwordEncoder.encode(userInfo.getPassword()));
			return userInfoService.save(userInfo);
		}
		return null;

	}
		
//	@PostMapping("/user1Registration")
//	public ModelAndView user1Registration(@ModelAttribute("userInfo") UserInfo userInfo) {
//	    	
//			Map<String, Object> model = new HashMap<>();
////	        
////	        String firstName = request.getParameter("firstName");
////	        String lastName = request.getParameter("lastName");
////	        String email = request.getParameter("email");
////	        String role = request.getParameter("role");
////	        String username = request.getParameter("username");
////	        String password = request.getParameter("password");       
////	        
////	        UserInfo entity = new UserInfo();
////	        
////	        entity.setFirstName(firstName);
////	        entity.setLastName(lastName);
////	        entity.setEmail(email);
////	        entity.setRole(role);
////	        entity.setUsername(username);
////	        entity.setPassword(passwordEncoder.encode(password));
//
//		userInfo = userInfoService.save(userInfo);
//	        
//	        
//	        if (userInfo != null) {
//	            model.put("success", true);
//	            model.put("message", "Save Successful");
//	            return new ModelAndView("user1Registration", model);
//	        }else {
//	            model.put("error", false);
//	            model.put("message", "Save failed");
//	            return new ModelAndView("user1registration", model);
//	        }
//	        
//	        
////	        if (!results.hasErrors()) {
////				entity.setPassword(passwordEncoder.encode(entity.getPassword()));
////				return userInfoService.save(entity);
////			}
//	        
//	        
//	    }
	
	
	
	
	@PostMapping(value = "/save")
    public ModelAndView registration(HttpServletRequest request) {
        Map<String, Object> model = new HashMap<>();
        String fName = request.getParameter("fName");
        String lName = request.getParameter("lName");
        String email = request.getParameter("email");
        String role = request.getParameter("role");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String enabled = request.getParameter("enabled");
        String createDate = request.getParameter("createDate");
        String updateDate = request.getParameter("updateDate");
        
       
        UserInfo userInfo = new UserInfo();
        userInfo.setFirstName(fName);
        userInfo.setLastName(lName);
        userInfo.setEmail(email);
        userInfo.setRole(role);
        userInfo.setUsername(username);
        userInfo.setPassword(passwordEncoder.encode(password));
        userInfo.setCreatedDate(new Date());
        userInfo.setUpdateDate(new Date());
        userInfo.setEnabled(true);
        userInfo = userInfoService.save(userInfo);
        
        if (userInfo != null) {
            model.put("success", true);
            model.put("msg", "Registration Successful");
            return new ModelAndView("/login", model);
        } else {
            model.put("error", false);
            model.put("message", "Save failed");
            return new ModelAndView("/user1Registration", model);
        }
    }

	
	
	@GetMapping(value = "/login")
	public ModelAndView login() {
		return new ModelAndView("login");
	}
	
	
	
	
	@GetMapping(value = "/login-success")
	public ModelAndView loginsuccess() {
		
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		String currentPrincipalName = authentication.getName();
		List<GrantedAuthority> roles = (List<GrantedAuthority>) authentication.getAuthorities();
		
		if(roles.get(0).getAuthority().equalsIgnoreCase("user")) {
			return new ModelAndView("login-success");
		}else if(roles.get(0).getAuthority().equalsIgnoreCase("admin")) {
				return new ModelAndView("login-success-admin");
			}
		
		return null;
	}
	
	
	
	 
//	  @GetMapping(value = "/login-success-admin")
//		public ModelAndView loginsuccessadmin() {
//			
//			Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
//			String currentPrincipalName = authentication.getName();
//			List<GrantedAuthority> roles = (List<GrantedAuthority>) authentication.getAuthorities();
//			
//			if(roles.get(0).getAuthority().equalsIgnoreCase("admin")) {
//				return new ModelAndView("login-success-admin");
//			}
//			
//			return null;
//		}
	
	
	

	

//	@GetMapping("/")
//	public String Home() {
//		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
//
//		if (!(auth instanceof AnonymousAuthenticationToken)) {
//			String currentUserName = auth.getName();			
//			return currentUserName;
//		}
//		return null;
//	}

}
