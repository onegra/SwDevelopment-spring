package com.itbank.model;

import org.springframework.web.multipart.MultipartFile;

//idx     number          generated as identity primary key,
//name    varchar2(100)   not null,
//img     varchar2(500)   not null,
//price   number          not null,
//amount  number          default 0

public class ProductDTO {
	private int idx;
	private String name;
	private String img;
	private int price;
	private int amount;
	
	private MultipartFile upload;
	
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	
	
}
