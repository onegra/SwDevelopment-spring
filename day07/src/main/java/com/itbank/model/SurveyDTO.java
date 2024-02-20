package com.itbank.model;

import org.springframework.web.multipart.MultipartFile;

public class SurveyDTO {
	private int idx;
	private String title;
	private String writer;
	private String option1;
	private String option2;
	private String image1;
	private String image2;
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
	public String getOption1() {
		return option1;
	}
	public void setOption1(String option1) {
		this.option1 = option1;
	}
	public String getOption2() {
		return option2;
	}
	public void setOption2(String option2) {
		this.option2 = option2;
	}
	public String getImage1() {
		return image1;
	}
	public void setImage1(String image1) {
		this.image1 = image1;
	}
	public String getImage2() {
		return image2;
	}
	public void setImage2(String image2) {
		this.image2 = image2;
	}
	public MultipartFile getUpload1() {
		// TODO Auto-generated method stub
		return null;
	}
	public MultipartFile getUpload2() {
		// TODO Auto-generated method stub
		return null;
	}
	
	
	
}
