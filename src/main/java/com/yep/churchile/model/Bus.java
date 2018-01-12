package com.yep.churchile.model;

public class Bus {
	private int id;
	private String plate;
	private int type;
	private int state;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getPlate() {
		return plate;
	}
	public void setPlate(String plate) {
		this.plate = plate;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public Bus(){}
	public Bus(int id, String plate, int type, int state) {
		this.id = id;
		this.plate = plate;
		this.type = type;
		this.state = state;
	}
	
	

}
