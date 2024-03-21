package com.itbank.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.itbank.model.LCKMVPDTO;
import com.itbank.service.GameService;

@RestController
@RequestMapping("/Ajax")
public class AjaxController {
	@Autowired private GameService gs;
	
	@PostMapping("/MVP")	
	public int MVPChoice(@RequestBody LCKMVPDTO dto) {
		int row = 0;
		LCKMVPDTO check = gs.MVPChoiceCheck(dto);
		if(check == null) {
			row = gs.MVPChoice(dto);
		}
		else {
			row = gs.MVPUpdate(dto);
		}
		return row;
	}
	@PostMapping("/MVPTime")
	public int MVPTime(@RequestBody Map<String, Date> Time) {
		int row = 0;
		String todayDateString = "";
		String gameDateString = "";
		
		//System.out.println(Time.get("todayDate"));
		//System.out.println(Time.get("gameDate"));
		SimpleDateFormat sdf = new SimpleDateFormat("yyMMdd");
		todayDateString = sdf.format(Time.get("todayDate"));
		gameDateString = sdf.format(Time.get("gameDate"));
		
		//System.out.println("today : " + todayDateString);
		//System.out.println("game : " + gameDateString);
		int todayNum = Integer.parseInt(todayDateString);
		int gameNum = Integer.parseInt(gameDateString);
		
		if(todayNum > gameNum) {
			row = 1;
		}
		return row;
	}

}
