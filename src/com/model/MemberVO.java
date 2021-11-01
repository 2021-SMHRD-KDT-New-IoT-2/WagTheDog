package com.model;

public class MemberVO {
	private String name;
	private String id;
	private String address;
	
	//»ı¼ºÀÚ
	public MemberVO(String name, String id, String address) {
		this.name = name;
		this.id = id;
		this.address = address;	
		
	}
	
	public String getName() {
		return name;
	}
	
	public String getId() {
		return id;
	}
	
	public String getAddress() {
		return address;
	}
	
	
}
