package com.itbank.controller;


import java.sql.Date;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.LCKGameDTO;
import com.itbank.model.LCKMVPDTO;
import com.itbank.service.GameService;


@Controller
@RequestMapping("/game")
public class GameController {
	
	@Autowired private GameService gs;
	
	
	@GetMapping("/list")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		List<LCKGameDTO> list = gs.getlist();
		List<Date> datelist = new ArrayList<>();
		for(LCKGameDTO dto : list) {
//			String date = "";
//			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
//			date = sdf.format(dto.getGameDate());
			datelist.add(dto.getGameDate());
		}
		LinkedHashSet<Date> set = new LinkedHashSet<>(datelist);
		datelist = new ArrayList<Date>(set);
		System.out.println("datelist : " + datelist);
		mav.addObject("list",list);
		mav.addObject("datelist",datelist);
		return mav;
	}


	
	@GetMapping("/MVP/{idx}")
	public ModelAndView view(@PathVariable("idx") int idx) {
		ModelAndView mav = new ModelAndView("/game/MVP");
		LCKMVPDTO dto = gs.selectMVP(idx);
		mav.addObject("dto", dto);
		return mav;
}
			
	@GetMapping("/video")
	public String video() {
		return "/game/video";
	}
	
	@GetMapping("/MVP")
	public String MVP() {		
		return "/game/MVP";
	}
}
