package com.yep.churchile.model;

public class Travel {
	private int id;
	private int busId;
	private int volume;
	private int volumeLeft;
	private String start;
	private	String terminal;
	private String startTime;
	private String endTime;
	private int state;
	
	private int ticketId;
	private double price;
	private String plate;
	private String type;
	
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getBusId() {
		return busId;
	}
	public void setBusId(int busId) {
		this.busId = busId;
	}
	public int getVolume() {
		return volume;
	}
	public void setVolume(int volume) {
		this.volume = volume;
	}
	public int getVolumeLeft() {
		return volumeLeft;
	}
	public void setVolumeLeft(int volumeLeft) {
		this.volumeLeft = volumeLeft;
	}
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getTerminal() {
		return terminal;
	}
	public void setTerminal(String terminal) {
		this.terminal = terminal;
	}
	public String getStartTime() {
		return startTime;
	}
	public void setStartTime(String startTime) {
		this.startTime = startTime;
	}
	public String getEndTime() {
		return endTime;
	}
	public void setEndTime(String endTime) {
		this.endTime = endTime;
	}
	public int getState() {
		return state;
	}
	public void setState(int state) {
		this.state = state;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getPlate() {
		return plate;
	}
	public void setPlate(String plate) {
		this.plate = plate;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getTicketId() {
		return ticketId;
	}
	public void setTicketId(int ticketId) {
		this.ticketId = ticketId;
	}
	
	public Travel(){}
	public Travel(int id, int busId, int volume, int volumeLeft, String start, String terminal, String startTime,
			String endTime, int state, int ticketId, double price, String plate, String type) {
		this.id = id;
		this.busId = busId;
		this.volume = volume;
		this.volumeLeft = volumeLeft;
		this.start = start;
		this.terminal = terminal;
		this.startTime = startTime;
		this.endTime = endTime;
		this.state = state;
		this.ticketId = ticketId;
		this.price = price;
		this.plate = plate;
		this.type = type;
	}
	
	
	
	
	

}
