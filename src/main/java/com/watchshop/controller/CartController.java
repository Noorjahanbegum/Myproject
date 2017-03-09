package com.watchshop.controller;



import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

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
	
	
@RequestMapping(value="/AddToCart",method=RequestMethod.GET)
	public String addCart(@RequestParam("proid")int pid,@RequestParam("quantity") int qt,HttpSession session, Map <String,Object> model )
	{
	Product p=prodDao.getP(pid);
	CartModel c=new CartModel();
	int x=cartdao.maxId();
	c.setCartid(++x);
	
	
	
	c.setCartuser((String)session.getAttribute("UserName"));
	c.setProductid(p.getId());
	c.setProductname(p.getName());
	c.setProductprice(p.getPrice());
	c.setQuantity(qt);
	c.setCattotal(p.getPrice()*qt);
	cartdao.savecart(c);
	
	List clist=cartdao.listcat((String)session.getAttribute("UserName"));
	model.put("cl",clist);
		return "addtocart";
		
		
	}
@RequestMapping (value="/remove",method=RequestMethod.GET)
public String remCart(@RequestParam ("acart")int ct,HttpSession session, Map <String,Object> model)
{
	
    cartdao.removeCart(ct);
	
	List clist=cartdao.listcat((String)session.getAttribute("UserName"));
	model.put("cl",clist);
	
	return "addtocart";
}

}