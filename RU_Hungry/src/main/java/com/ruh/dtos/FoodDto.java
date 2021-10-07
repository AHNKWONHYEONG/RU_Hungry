package com.ruh.dtos;

public class FoodDto {

	private int seq;
	private String id;
	private String foodname;
	private int spicy;
	private int salty;
	private int sour;
	private int sweet;
	private int hot;
	private int cold;
	
	public FoodDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public FoodDto(int seq, String id, String foodname, int spicy, int salty, int sour, int sweet, int hot, int cold) {
		super();
		this.seq = seq;
		this.id = id;
		this.foodname = foodname;
		this.spicy = spicy;
		this.salty = salty;
		this.sour = sour;
		this.sweet = sweet;
		this.hot = hot;
		this.cold = cold;
	}

	public int getSeq() {
		return seq;
	}

	public void setSeq(int seq) {
		this.seq = seq;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getFoodname() {
		return foodname;
	}

	public void setFoodname(String foodname) {
		this.foodname = foodname;
	}

	public int getSpicy() {
		return spicy;
	}

	public void setSpicy(int spicy) {
		this.spicy = spicy;
	}

	public int getSalty() {
		return salty;
	}

	public void setSalty(int salty) {
		this.salty = salty;
	}

	public int getSour() {
		return sour;
	}

	public void setSour(int sour) {
		this.sour = sour;
	}

	public int getSweet() {
		return sweet;
	}

	public void setSweet(int sweet) {
		this.sweet = sweet;
	}

	public int getHot() {
		return hot;
	}

	public void setHot(int hot) {
		this.hot = hot;
	}

	public int getCold() {
		return cold;
	}

	public void setCold(int cold) {
		this.cold = cold;
	}

	@Override
	public String toString() {
		return "FoodDto [seq=" + seq + ", id=" + id + ", foodname=" + foodname + ", spicy=" + spicy + ", salty=" + salty
				+ ", sour=" + sour + ", sweet=" + sweet + ", hot=" + hot + ", cold=" + cold + "]";
	}
	
	
}