package com.watchshop.controller;



import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.watchshop.dao.CartDao;
import com.watchshop.dao.Productdao;
import com.watchshop.model.CartModel;
import com.watchshop.model.Product;
import com.watchshop.model.UserDetails;

@Controller
public class CartController 
{
	int crt=0;
	double tot=0;
	@Autowired
	CartDao cartdao;
	@Autowired
	Productdao prodDao;
	
	
@RequestMapping(value="/AddToCart",method=RequestMethod.GET)
	public String addCart(@RequestParam("proid")int pid,@RequestParam("quantity") int qt,HttpSession session, Map <String,Object> model )
	{
	crt++;
	session.setAttribute("cartadd",crt);
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
	tot=tot+p.getPrice()*qt;
	session.setAttribute("crtTot",tot);
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
@RequestMapping (value="/showCart",method=RequestMethod.GET)
public String showCart(HttpSession session, Map <String,Object> model)
{
	List clist=cartdao.listcat((String)session.getAttribute("UserName"));
	model.put("cl",clist);
		return "addtocart";
    
	
}
@RequestMapping(value = "/OrderConfirm", method = RequestMethod.GET)
public String orderConfirm( HttpSession session,Model m) {

	
	String usernam=(String)session.getAttribute("userId");
	List<UserDetails> userData=cartdao.getUser(usernam);
	if(userData!=null)
	{
	
		UserDetails ud=userData.get(0);
		System.out.println("pro idddddddddddddddddddddd" + ud.getUserName());
	m.addAttribute("UserInfo",userData);
	
	
	}
	return "orderConfirmation";
}

}