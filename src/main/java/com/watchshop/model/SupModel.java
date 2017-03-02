package com.watchshop.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class SupModel {
	@Id
	private int id;
	@Column
	private String name;
	@Column
	private String mpn;
	@Column
	private String adr;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMpn() {
		return mpn;
	}
	public void setMpn(String mpn) {
		this.mpn = mpn;
	}
	public String getAdr() {
		return adr;
	}
	public void setAdr(String adr) {
		this.adr = adr;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
}
