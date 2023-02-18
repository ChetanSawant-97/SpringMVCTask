package com.ems.entities;

import java.sql.Date;

import javax.persistence.Entity;

import javax.persistence.Id;


@Entity
public class Employee 
{
	
	private String name;
	private String address;
	private String city;
	private String state;
	private String gender;
	private Date dob;
	@Id
	private String userId;
	private String userPassword;
	
	
	
	
	public Employee(String name,Date dob, String address, String city,  String state, String gender, String userId,
			String userPassword) {
		super();
		this.name = name;
		this.dob = dob;
		this.address = address;
		this.city = city;
		this.gender = gender;
		this.state = state;
		this.userId = userId;
		this.userPassword = userPassword;
	}
	public Employee() {
	
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	
	
	public String getGender() {
		return city;
	}
	public void setGender(String gender) {
		this.gender= gender;
	}
	
	
	
	
	
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public Date getDob() {
		return dob;
	}
	public void setDob(Date dob) {
		this.dob = dob;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	
	@Override
	public String toString() {
		return "Employee [name=" + name + ", address=" + address + ", city=" + city + ", state=" + state + ", dob="
				+ dob + ", userId=" + userId + ", userPassword=" + userPassword + "]";
	}
	
	
	

}
