package com.watchshop.controller;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.watchshop.dao.InsertDao;
import com.watchshop.model.UserCreadential;
import com.watchshop.model.UserDetails;

@Controller
@RequestMapping(value = "/Register")
public class RegController {
	 @Autowired
	   InsertDao indao;
	
    @RequestMapping(method = RequestMethod.GET)
    public ModelAndView viewRegistration() 
    {
     ModelAndView mv=new ModelAndView("Register","command",new UserDetails());
     return mv;
  
    }
    @RequestMapping(method = RequestMethod.POST)
    public String processRegistration(@Valid @ModelAttribute("UserDetails")UserDetails reg, BindingResult result,Map<String, Object> model) {
         
        // implement your own registration logic here...
         
        // for testing purpose:
        System.out.println("username: " + reg.getName());
        System.out.println("password: " + reg.getPassword());
       // System.out.println("email: " + user.getEmail());
       
        UserCreadential uc=new UserCreadential();
        uc.setUserName(reg.getUserName());
        uc.setPassword(reg.getPassword());
        uc.setEnabled(true);
        uc.setRole("USER_ROLE");
        indao.insertData(reg);
        indao.insertLogin(uc);
        if (result.hasErrors()) {
            return "Register";
        }
        return "insertSuccess";
    }
}
