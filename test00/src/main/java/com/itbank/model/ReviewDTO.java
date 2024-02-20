package com.itbank.model;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

//idx         number          generated as identity primary key,
//title       varchar2(500)   not null,
//writer      varchar2(200)   not null,
//content     varchar2(2000)  not null,
//writeDate   date            default sysdate,
//image       varchar2(500)   not null,
public class ReviewDTO {
	private int idx;
	private String title;
	private String writer;
	private String content;
	private Date writeDate;
	private String image;
	
	private MultipartFile upload;
	
	
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(Date writeDate) {
		this.writeDate = writeDate;
	}
	
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public MultipartFile getUpload() {
		return upload;
	}
	public void setUpload(MultipartFile upload) {
		this.upload = upload;
	}
	
	
}
