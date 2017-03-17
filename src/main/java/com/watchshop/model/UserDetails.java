package com.watchshop.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;


@Entity
@Table
public class UserDetails implements Serializable{
	@Id
	
	@Column(name = "userId")
	private int userId;
	@Column(name = "userName")
	private String userName;
	
	@Column(name = "password")
	private String password;
	
	@Column(name = "mobile")
	private String mobile;
	@Column(name = "shipadd")
	private String shipadd;
	@Column(name = "billadd")
	private String billadd;
	@Column(name = "country")
	private String country;
	@Column(name = "zipcode")
	private int zipcode;
	
	
	public String getShipadd() {
		return shipadd;
	}
	public void setShipadd(String shipadd) {
		this.shipadd = shipadd;
	}
	public String getBilladd() {
		return billadd;
	}
	public void setBilladd(String billadd) {
		this.billadd = billadd;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	public int getZipcode() {
		return zipcode;
	}
	public void setZipcode(int zipcode) {
		this.zipcode = zipcode;
	}

	@Column(name = "email")
	private String email;
	@Column(name = "name")
	private String name;
	
	@Transient
	private String role;
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public boolean isEnabled() {
		return enabled;
	}
	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}
	@Transient
	private boolean enabled;
	
}
