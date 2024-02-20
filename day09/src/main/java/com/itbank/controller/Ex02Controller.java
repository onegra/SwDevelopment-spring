package com.itbank.controller;

import java.io.IOException;
import java.net.MalformedURLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itbank.service.Ex01Service;

@Controller
public class Ex02Controller {
	 
	@Autowired private Ex01Service service;
	@GetMapping("/ex02")
	 public void ex02() {}
	 
	 @GetMapping(value="/ex02/js", produces="application/json; charset=utf-8")
	 @ResponseBody
	 public String ex02Js() throws MalformedURLException, IOException {
		 String json = service.getFestivalJson();
		 return json;
	 }
	 
}
