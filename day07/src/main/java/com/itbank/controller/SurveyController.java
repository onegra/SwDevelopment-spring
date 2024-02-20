package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import com.itbank.model.SurveyDTO;
import com.itbank.service.SurveyService;

@Controller
@RequestMapping("/survey")

public class SurveyController {
	@Autowired private SurveyService surveyService;
	
	@GetMapping("/add")
	public void add() {}
	
	@PostMapping("/add")
	public String add(SurveyDTO dto) {
		int row = surveyService.add(dto);
		System.out.println(row != 0 ? "등록 성공" : "등록 실패");
		return "redirect:/";
	}
	
	@GetMapping("/list")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		List<SurveyDTO> list = surveyService.getList();
		mav.addObject("list", list);
		return mav;
	}
	

	@GetMapping("/result/{idx}")
	public ModelAndView result(@PathVariable("idx") int idx) {
		ModelAndView mav = new ModelAndView("/survey/result");
		SurveyDTO dto = surveyService.getResult(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	
	
}
