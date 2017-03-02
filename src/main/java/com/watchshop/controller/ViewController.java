package com.watchshop.controller;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.watchshop.dao.ViewProduct;
import com.watchshop.model.Product;
@Controller
public class ViewController {
	@Autowired
	ViewProduct vpDao;
	
	@RequestMapping (value="/ViewProduct",method=RequestMethod.GET)
	public String viewAddProduct(Map <String , Object > model){
		Product addProd=new Product();
		model.put("addProd", addProd);
		
		List prolist=vpDao.listPro();
		model.put("pro",prolist);
		model.put("ed", 0);
		return "viewproduct";
	}
	
	@RequestMapping (value="/ViewProduct",method=RequestMethod.POST)
	public String processAddProduct (@ModelAttribute("addProd")Product prod, Map <String,Object> model){
		
		System.out.println("Product ID :" + prod.getId());
		System.out.println("Product Name :" + prod.getName());
		System.out.println("Description :" + prod.getDescription());
		System.out.println("Quantity :" +prod.getQuantity());
		System.out.println("Price :" + prod.getPrice());
		System.out.println("Manufacturing Date :" +prod.getMfg());
		
		vpDao.saveProd(prod);
		
		List prolist=vpDao.listPro();
		model.put("pro", prolist);
		model.put("ed", 0);
		
		try
		{
		String path="D:\\projectdemo\\watch\\src\\main\\webapp\\resources\\";
		path=path+String.valueOf(prod.getId()) + ".jpg";
		File f=new File(path);
		MultipartFile filedata=prod.getImage();
		
		byte[] b=filedata.getBytes();
		FileOutputStream fos=new FileOutputStream(f);
		BufferedOutputStream bos=new BufferedOutputStream(fos);
		
		bos.write(b);
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return "viewproduct";
		}	
	
	
	@RequestMapping(value="/info",method=RequestMethod.GET)
	public String infoProduct(@RequestParam("pid")int pid,Map <String,Object> model)
	{
		
		Product product=vpDao.infoPro(pid);
		System.out.println(product.getId());
		
        List <Product> pl=new ArrayList<Product>();
        
        pl.add(product);
        
		model.put("addProd",pl);
		
		List prolist=vpDao.listPro();
		model.put("pro", prolist);
		
		return "info";
	
}

}
