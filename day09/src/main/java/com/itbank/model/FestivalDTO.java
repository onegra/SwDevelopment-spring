package com.itbank.model;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

//JSON데이터에서 DTO에 명시되지 않은 속성(알수 없는 속성)은 무시하겠다
@JsonIgnoreProperties(ignoreUnknown = true)

//JSON 속성이름을 자바 네이밍 컨벤션(camelCase)으로 변환하는 과정이 맞아야 한다
public class FestivalDTO {
	private int US_SEQ;
	private String MAIN_TITLE;
	private String GUGUN_NM;
	private String HOMEPAGE_URL;
	private String MAIN_IMG_NORMAL;
	private String ITEMCNTNTS;
	public int getUS_SEQ() {
		return US_SEQ;
	}
	public void setUS_SEQ(int uS_SEQ) {
		US_SEQ = uS_SEQ;
	}
	public String getMAIN_TITLE() {
		return MAIN_TITLE;
	}
	public void setMAIN_TITLE(String mAIN_TITLE) {
		MAIN_TITLE = mAIN_TITLE;
	}
	public String getGUGUN_NM() {
		return GUGUN_NM;
	}
	public void setGUGUN_NM(String gUGUN_NM) {
		GUGUN_NM = gUGUN_NM;
	}
	public String getHOMEPAGE_URL() {
		return HOMEPAGE_URL;
	}
	public void setHOMEPAGE_URL(String hOMEPAGE_URL) {
		HOMEPAGE_URL = hOMEPAGE_URL;
	}
	public String getMAIN_IMG_NORMAL() {
		return MAIN_IMG_NORMAL;
	}
	public void setMAIN_IMG_NORMAL(String mAIN_IMG_NORMAL) {
		MAIN_IMG_NORMAL = mAIN_IMG_NORMAL;
	}
	public String getITEMCNTNTS() {
		return ITEMCNTNTS;
	}
	public void setITEMCNTNTS(String iTEMCNTNTS) {
		ITEMCNTNTS = iTEMCNTNTS;
	}
	
	
}
