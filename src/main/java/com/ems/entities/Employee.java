package com.ems.entities;

import java.sql.Date;

import javax.persistence.Entity;

import javax.persistence.Id;


@Entity
public class Employee 
{
	@Id
	private String userId;
	private String userPassword;
	private String name;
	private String gender;
	private String address;
	private String city;
	private String state;
	private Date dob;
	
	
	
	
	public Employee() {
	
	}




	public Employee(String userId, String userPassword, String name, String gender, String address, String city,
			String state, Date dob) {
		super();
		this.userId = userId;
		this.userPassword = userPassword;
		this.name = name;
		this.gender = gender;
		this.address = address;
		this.city = city;
		this.state = state;
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

	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public String getGender() {
		return gender;
	}




	public void setGender(String gender) {
		this.gender = gender;
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




	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}




	@Override
	public String toString() {
		return "Employee [userId=" + userId + ", userPassword=" + userPassword + ", name=" + name + ", gender=" + gender
				+ ", address=" + address + ", city=" + city + ", state=" + state + ", dob=" + dob + "]";
	}

}
