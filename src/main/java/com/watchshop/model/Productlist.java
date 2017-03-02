package com.watchshop.model;

import org.springframework.web.multipart.MultipartFile;

public class Productlist {
	private int id;
    private String name;
    private String description;
    private double price;
    private int quantity;
    private String mfg;
    private MultipartFile image;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getMfg() {
		return mfg;
	}
	public void setMfg(String mfg) {
		this.mfg = mfg;
	}
	public MultipartFile getImage() {
		return image;
	}
	public void setImage(MultipartFile image) {
		this.image = image;
	}
}
