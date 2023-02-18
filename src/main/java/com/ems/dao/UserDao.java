package com.ems.dao;

import java.util.List;
import java.util.Optional;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.ems.entities.Employee;

@Component
public class UserDao 
{
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public boolean save(Employee employee) 
	{
		try {
			this.hibernateTemplate.save(employee);
			return true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
	}

	public List<Employee> getAllEmployees()
	{
		return this.hibernateTemplate.loadAll(Employee.class);
	}
	
	public Optional<Employee> empLogin(String username, String password) 
	{
		Employee emp = this.hibernateTemplate.get(Employee.class, username);
		
		if (emp!=null && emp.getUserPassword().equals(password)) 
		{
			return Optional.ofNullable(emp);	
		}
		return Optional.empty();
	}
}
