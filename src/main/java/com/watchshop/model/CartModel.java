package com.watchshop.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class CartModel implements Serializable{

@Id
private int cartid;
@Column
private String cartuser;
@Id
private int Productid;
@Column
private String productname;
@Column
private double productprice;
@Column
private int quantity;
@Column
private double cattotal;
public int getCartid() {
	return cartid;
}
public void setCartid(int cartid) {
	this.cartid = cartid;
}
public String getCartuser() {
	return cartuser;
}
public void setCartuser(String cartuser) {
	this.cartuser = cartuser;
}
public int getProductid() {
	return Productid;
}
public void setProductid(int productid) {
	Productid = productid;
}
public String getProductname() {
	return productname;
}
public void setProductname(String productname) {
	this.productname = productname;
}
public double getProductprice() {
	return productprice;
}
public void setProductprice(double productprice) {
	this.productprice = productprice;
}
public int getQuantity() {
	return quantity;
}
public void setQuantity(int quantity) {
	this.quantity = quantity;
}
public double getCattotal() {
	return cattotal;
}
public void setCattotal(double cattotal) {
	this.cattotal = cattotal;
}

}
