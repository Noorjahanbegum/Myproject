package com.watchshop.controller;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
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
@RequestMapping("/Register")
public String regist()
{
	return "Register";
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
