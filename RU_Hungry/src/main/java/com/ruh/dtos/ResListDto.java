package com.ruh.dtos;

public class ResListDto {

	private int seq;
	private String name;
	private String foodname;
	private String address;
	private String phone;
	private String breakstart;
	private String breakend;
	private String open;
	private String close;
	private String parking;
	private String si;
	private String gu;
	private float lat;
	private float ing;
	public ResListDto() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ResListDto(int seq, String name, String foodname, String address, String phone, String breakstart,
			String breakend, String open, String close, String parking, String si, String gu, float lat, float ing) {
		super();
		this.seq = seq;
		this.name = name;
		this.foodname = foodname;
		this.address = address;
		this.phone = phone;
		this.breakstart = breakstart;
		this.breakend = breakend;
		this.open = open;
		this.close = close;
		this.parking = parking;
		this.si = si;
		this.gu = gu;
		this.lat = lat;
		this.ing = ing;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFoodname() {
		return foodname;
	}
	public void setFoodname(String foodname) {
		this.foodname = foodname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getBreakstart() {
		return breakstart;
	}
	public void setBreakstart(String breakstart) {
		this.breakstart = breakstart;
	}
	public String getBreakend() {
		return breakend;
	}
	public void setBreakend(String breakend) {
		this.breakend = breakend;
	}
	public String getOpen() {
		return open;
	}
	public void setOpen(String open) {
		this.open = open;
	}
	public String getClose() {
		return close;
	}
	public void setClose(String close) {
		this.close = close;
	}
	public String getParking() {
		return parking;
	}
	public void setParking(String parking) {
		this.parking = parking;
	}
	public String getSi() {
		return si;
	}
	public void setSi(String si) {
		this.si = si;
	}
	public String getGu() {
		return gu;
	}
	public void setGu(String gu) {
		this.gu = gu;
	}
	public float getLat() {
		return lat;
	}
	public void setLat(float lat) {
		this.lat = lat;
	}
	public float getIng() {
		return ing;
	}
	public void setIng(float ing) {
		this.ing = ing;
	}
	@Override
	public String toString() {
		return "ResListDto [seq=" + seq + ", name=" + name + ", foodname=" + foodname + ", address=" + address
				+ ", phone=" + phone + ", breakstart=" + breakstart + ", breakend=" + breakend + ", open=" + open
				+ ", close=" + close + ", parking=" + parking + ", si=" + si + ", gu=" + gu + ", lat=" + lat + ", ing="
				+ ing + "]";
	}
	
	
}