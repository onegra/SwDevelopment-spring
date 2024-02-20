package com.itbank.model;

import org.springframework.web.multipart.MultipartFile;

public class Upload1DTO {
//	IDX              NOT NULL NUMBER(38)    
//	MEMO             NOT NULL VARCHAR2(100) 
//	ORIGINALFILENAME NOT NULL VARCHAR2(500) 
//	STOREDFILENAME   NOT NULL VARCHAR2(500) 
//	UPLOADDATE                DATE                
	private int idx;
	private String memo;
	private String originalFileName ;
	private String storedFileName;
	private String uploadDate;
	
	//아래 1개필드는 form태그의 file을 파라미터로 받기 위한 필드임
	//(DB에는 저장하지 않음)
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
	public String getMemo() {
		return memo;
	}
	public void setMemo(String memo) {
		this.memo = memo;
	}
	public String getOriginalFileName() {
		return originalFileName;
	}
	public void setOriginalFileName(String originalFileName) {
		this.originalFileName = originalFileName;
	}
	public String getStoredFileName() {
		return storedFileName;
	}
	public void setStoredFileName(String storedFileName) {
		this.storedFileName = storedFileName;
	}
	public String getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(String uploadDate) {
		this.uploadDate = uploadDate;
	}
	
}
