package com.PrayoshaGems.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.PrayoshaGems.DAO.ProductDAO;
import com.PrayoshaGems.Model.Product;

import PrayoshaGems.DAOImpl.ProductDAOImpl;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
@RequestMapping("/product")
public class ProductController 

{
@Autowired
ProductDAO ProductDAO;
	
	@GetMapping("/add")
	public String addProduct(ModelMap M)
	{
		
		
		M.addAttribute("product", new Product());

	return "addproduct";
		
	}
	
	
	@PostMapping ("/add")
	
		
		public String Storeproduct(@ModelAttribute ("product")Product product)
		
		{
			
			ProductDAO.addProduct(product);
			return "redirect:/product/display";
			
		}
		
	
	@RequestMapping("/display")
	public String displayProducts(ModelMap map)
			{

		map.addAttribute("products",ProductDAO.displayProducts());
		return "displayproducts";
			
			}
	
	
	@RequestMapping("/display/{productid}")
	public String displayProduct(@PathVariable("productid") int productid, ModelMap map)
	{
		Product product=new Product();
		product.setProduct_Id(productid);
		map.addAttribute("product",ProductDAO.displayProductByName(product));
		return "displayproduct";
	}
	
	
	
	@RequestMapping("/delete")
	public void deleteProduct()
	{
		
	}
}