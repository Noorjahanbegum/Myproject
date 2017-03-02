package com.watchshop.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import com.watchshop.dao.Prodlistdao;
import com.watchshop.model.Productlist;
@Controller
@RequestMapping(value="/listproduct")
public class ListProduct {
	
	
		@Autowired
		Prodlistdao proddao;
		
		
		@RequestMapping(method=RequestMethod.GET)
		public String AddProduct(Map<String, Object> model)
		{
			Productlist product = new Productlist();    
	        model.put("product", product);
	        List prolist=proddao.listpro();
			model.put("pro",prolist);
			
	         return "productlist";
	    }
		@RequestMapping(method=RequestMethod.POST)
		public String getProductForm(@ModelAttribute("product")Productlist product,
	            Map<String, Object> model)
		{
			proddao.saveproduct(product);
			List prolist=proddao.listpro();
			model.put("pro",prolist);
			try
			{
			
			String path="D:\\projectdemo\\watch\\src\\main\\webapp\\resources\\";
					path= path+String.valueOf(product.getId())+".jpg";
					File f=new File(path);
					MultipartFile filedata=product.getImage();
					
					byte[] b1=filedata.getBytes();
					
					FileOutputStream fos=new FileOutputStream(f);
					BufferedOutputStream bos=new BufferedOutputStream(fos);
					bos.write(b1);
					
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
		return "productlist";
		}
	}
