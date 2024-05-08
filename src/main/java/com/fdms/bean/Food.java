package com.fdms.bean;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Food")
public class Food {
         
	@Id
	private int HotelID;
	private String HotelName;
	private String Address;
	private String phoneNo;
	private String Email;
	private Float Rating;
	
	public Food() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Food(int hotelID, String hotelName, String address, String phoneNo, String email, Float rating) {
		super();
		HotelID = hotelID;
		HotelName = hotelName;
		Address = address;
		this.phoneNo = phoneNo;
		Email = email;
		Rating = rating;
	}

	public int getHotelID() {
		return HotelID;
	}

	public void setHotelID(int hotelID) {
		HotelID = hotelID;
	}

	public String getHotelName() {
		return HotelName;
	}

	public void setHotelName(String hotelName) {
		HotelName = hotelName;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getPhoneNo() {
		return phoneNo;
	}

	public void setPhoneNo(String phoneNo) {
		this.phoneNo = phoneNo;
	}

	public String getEmail() {
		return Email;
	}

	public void setEmail(String email) {
		Email = email;
	}

	public Float getRating() {
		return Rating;
	}

	public void setRating(Float rating) {
		Rating = rating;
	}
	
	
	
	
}
