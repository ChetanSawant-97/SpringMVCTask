package com.ems.controller;

import java.sql.Date;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.ems.dao.UserDao;
import com.ems.entities.Employee;

@Controller
public class UserController 
{
	@Autowired
	private UserDao userDao;
	
	
	@RequestMapping("/signup")
	public String signupPage() 
	{
		return "register";
	}
	
	@RequestMapping("/signin")
	public String signinPage() 
	{	
		return "signin";
	}
	
	@PostMapping("/register")
	public String registerUser(@RequestParam("name") String name, @RequestParam("gender") String gender, 
								@RequestParam("address") String address, @RequestParam("city") String city, 
								@RequestParam("state") String state, @RequestParam("birthdate") Date dob, 
								@RequestParam("userId") String userId, @RequestParam("userPassword") String password,
								Model model ) 
	{

		try {
				boolean status = this.userDao.save(new Employee( userId,password, name,gender, address,city,state, dob));
				if(status) 
				{
					model.addAttribute("msg", "Registration Succesfull, Log in here!");
					return "signin";
				}
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("msg", "Registration failed, Register again");
		return "register";
	}
	
	
	@PostMapping("login")
	public String userLogin(@RequestParam("userId") String username, @RequestParam("userPassword") String password ,Model model)
	{
		try {
			
			Optional<Employee> employee = this.userDao.empLogin(username, password);
			if(employee.isPresent()) 
			{	
				model.addAttribute("emp", employee.get());
				model.addAttribute("empList",this.userDao.getAllEmployees() );
				
				return "dashboard";	
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("loginMsg","Log in failed please enter correct username/password" );
		return "signin";
	}
}
