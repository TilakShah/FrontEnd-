package com.PrayoshaGems.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.PrayoshaGems.DAO.UserDataDAO;
import com.PrayoshaGems.Model.UserData;

@Controller
public class IndexController
{
	@Autowired
	UserDataDAO UDO;
	
	@RequestMapping(value = {"/home","","/"})
	public String m1()
	
	{
	return "index";
	}
	@RequestMapping(value = {"/Register"})
	public String m2(ModelMap map)
	{
	UserData u=new UserData();
	map.addAttribute("UserBasket",u); // (AnyName , Object of Model (also known as empty bucket to store data)
	return "Register";
	
	}
	
	@RequestMapping(value= {"/registercontroller"})
	public String m3(@ModelAttribute("UserBasket") UserData u) 

{
 UDO.addUser(u);
return "index";
}
	
	@RequestMapping(value = {"/Login"})
	public String m4()
	
	{
	return "Login";
	}	

}
