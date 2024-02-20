package com.itbank.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.itbank.model.AccountDTO;
import com.itbank.service.AccountService;

@Controller
@RequestMapping("/account")
public class AccountController {
	@Autowired private AccountService AccountService;
	
	@GetMapping("/login")
	public void login() {}
	
	@PostMapping("/login")
	public String login(AccountDTO dto, HttpSession session) {
		AccountDTO login = AccountService.login(dto);
		session.setAttribute("login", login);
		return "redirect:/";
		
	}
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
	
	@GetMapping("/join")
	public void join() {}
	
	@PostMapping("/join")
	public String join(AccountDTO dto) {
		int row = AccountService.add(dto);
		System.out.println(row != 0 ? "추가 성공" : "추가 실패");
		return "redirect:/account/login";
	}
}
