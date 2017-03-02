package com.watchshop.controller;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.watchshop.dao.SupDao;
import com.watchshop.model.AddCategory;
import com.watchshop.model.SupModel;

@Controller
@RequestMapping (value ="/AddSupplier")
public class SupController {
	@Autowired
	SupDao supDAO;
	
	@RequestMapping (method=RequestMethod.GET)
	public String viewSupplier(Map <String,Object> model) {
		SupModel supplier=new SupModel();
		model.put("supplier",supplier);
		
		List suplist=supDAO.listsup();
		model.put("su",suplist);
		model.put("editing",0);
	return "AddSupplier";
	}

	@RequestMapping (method=RequestMethod.POST)
	public String processSupplier (@ModelAttribute("supplier") SupModel supm,Map <String,Object> model) {
		
	   System.out.println("supplier ID :" + supm.getId());
	   System.out.println("Name :" + supm.getName());
	   System.out.println("mobile :" + supm.getMpn());
	   System.out.println("adrress:"+supm.getAdr());
	   supDAO.saveSupplier(supm);
	   List suplist=supDAO.listsup();
		model.put("su",suplist);
		model.put("editing",0);
	   return "AddSupplier";
}
	@RequestMapping(value="/edit ",method=RequestMethod.GET)
	public String editSup(@RequestParam("supid")int sid,Map <String,Object> model)
	{
		
		SupModel  se=supDAO.getSup(sid);
		System.out.println("===================="+se.getId());
		System.out.println("===================="+se.getName());
        List<SupModel> supp=new ArrayList<SupModel>();
        
		model.put("supplier",supp);
		model.put("supData",se);
		model.put("editing",1);
		
		
		List sup=supDAO.listsup();
		model.put("su",sup);
		
		return "AddSupplier";
	}
	
	@RequestMapping (value="/editSupplier",method=RequestMethod.POST)
	public String editSupplier(@ModelAttribute("supplier") SupModel supm,Map <String,Object> model) {
		
	   System.out.println(" ID :" +supm.getId());
	   System.out.println("Name :" + supm.getName());
	   System.out.println("mobile :" + supm.getMpn());
	   model.put("editing",0);
	  supDAO.updateSup(supm);
	   
	   
		
		List sup=supDAO.listsup();
		model.put("su",sup);
	   
	   return "AddSupplier";
	}
	@RequestMapping(value="/delcat",method=RequestMethod.GET)
	public String delsup(@RequestParam("supid")int sd,Map <String,Object> model)
	{
	    model.put("ed", 0);
	    supDAO.deleteSup(sd);
	    
	    List suplist=supDAO.listsup();
		model.put("su", suplist);
		
		
	    return "AddSupplier";
	    
	}
	
}
