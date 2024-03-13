package com.itbank.model;

import java.util.Date;

//idx             number          generated as identity primary key,
//redTeam         varchar2(100)   not null,
//blueTeam        varchar2(100)   not null,
//redScore        number          not null,
//blueScore       number          not null,
//gameTime        date            not null,
//status          number          check(result in(0,1,2)),
//url             varchar2(300)   
public class LCKGameDTO {
	private int idx;
	private String redTeam;
	private String blueTeam;
	private int redScore;
	private int blueScore;
	private Date gameTime;
	private int status;
	private String url;
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getRedTeam() {
		return redTeam;
	}
	public void setRedTeam(String redTeam) {
		this.redTeam = redTeam;
	}
	public String getBlueTeam() {
		return blueTeam;
	}
	public void setBlueTeam(String blueTeam) {
		this.blueTeam = blueTeam;
	}
	public int getRedScore() {
		return redScore;
	}
	public void setRedScore(int redScore) {
		this.redScore = redScore;
	}
	public int getBlueScore() {
		return blueScore;
	}
	public void setBlueScore(int blueScore) {
		this.blueScore = blueScore;
	}
	public Date getGameTime() {
		return gameTime;
	}
	public void setGameTime(Date gameTime) {
		this.gameTime = gameTime;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	
	
	
}
