package com.specszone_mart.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.stereotype.Component;


@Entity
@Component
public class Billingaddress implements Serializable {

	
	private static final long serialVersionUID = 3638428486607278496L;
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int billingid;
	private String street;
	private String city;
	private String state;
	private String country;
	private String pincode;
	
	

	public String getCity() {
		return city;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public static long getSerialversionuid() {
		return serialVersionUID;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getBillingid() {
		return billingid;
	}

	public void setBillingid(int billingid) {
		this.billingid = billingid;
	}

	

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}
}
