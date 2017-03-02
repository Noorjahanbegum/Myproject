package com.watchshop.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/login")
	public String log()
	{
		return "login";
	}
@RequestMapping("/adminhome")
public String admin()
{
	return "adminhome";
}
@RequestMapping("/listproduct")
public String user()
{
	return "productlist";
}
@RequestMapping("/register")
public String register()
{
	return "register";
}
@RequestMapping("/contactus")
public String con()
{
	return "contactus";
}
@RequestMapping("/about")
public String abts()
{
	return "Aboutus";
}
}
