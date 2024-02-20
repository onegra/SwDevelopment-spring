package com.itbank.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	@RequestMapping("/")
	public ModelAndView home() {
		ModelAndView mav = new ModelAndView("home");
		Date date = null;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
//		try { 
			String today = sdf.format(date);
			mav.addObject("today" , today);
//		} catch (NullPointerException e) {
//		 	System.out.println("예외가 발생했습니다 : " + e);
//			}
		 	return mav;
		}
	@ExceptionHandler(NullPointerException.class)
	public ModelAndView npe() {
		ModelAndView mav = new ModelAndView("home");
		mav.addObject("today", new Date());
		return mav;
	}
}

