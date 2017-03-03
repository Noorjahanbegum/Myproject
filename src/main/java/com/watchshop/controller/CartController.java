package com.watchshop.controller;



import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.watchshop.dao.CartDao;
import com.watchshop.dao.Productdao;
import com.watchshop.model.CartModel;
import com.watchshop.model.Product;

@Controller
public class CartController 
{
	@Autowired
	CartDao cartdao;
	@Autowired
	Productdao prodDao;
	
	
@RequestMapping(value="/AddtoCart",method=RequestMethod.GET)
	public String addCart(@RequestParam("proid")int pid,@RequestParam("quantity") int qt, Map <String,Object> model )
	{
	Product p=prodDao.getP(pid);
	CartModel c=new CartModel();
	c.setCartid(101);
	c.setCartuser("moiz");
	c.setProductid(p.getId());
	c.setProductname(p.getName());
	c.setProductprice(p.getPrice());
	c.setQuantity(qt);
	c.setCattotal(p.getPrice()*qt);
	cartdao.savecart(c);
	
	List clist=cartdao.listcat();
	model.put("cl",clist);
		return "addtocart";
		
		
	}
}