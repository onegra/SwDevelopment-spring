package com.itbank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.exception.AgeOutOfBoundsException;
import com.itbank.exception.StringEmptyException;

@Controller
@RequestMapping("/ex02")

public class Ex02Controller {
	
	@GetMapping
	public void ex02() {}
	
	@PostMapping
	public ModelAndView ex02(String name, int age) throws StringEmptyException, AgeOutOfBoundsException {
		if("".equals(name)) {
			throw new StringEmptyException();
		}
		if (age > 100 || age <= 0) {
			throw new AgeOutOfBoundsException();
		}
		ModelAndView mav = new ModelAndView("ex02-result");
		System.out.printf("name : [%s]\n", name);
		mav.addObject("name", name);
		mav.addObject("age",age);
		mav.addObject("adult", age >= 20 ? "성인" : "미성년자");
		return mav;
	}
	
	
}
