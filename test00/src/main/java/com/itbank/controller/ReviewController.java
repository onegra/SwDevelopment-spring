package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.ReviewDTO;
import com.itbank.service.ReviewService;

@Controller
@RequestMapping("/review")
public class ReviewController {
	
	@Autowired private ReviewService ReviewService;
	
	@GetMapping("/list")
	public ModelAndView productList() {
		ModelAndView mav = new ModelAndView("/review/list");
		List<ReviewDTO> list = ReviewService.getReviewList();
		mav.addObject("list",list);
		return mav;
	}
	
	@GetMapping("/view/{idx}")
	public ModelAndView view(@PathVariable("idx")int idx) {
		ModelAndView mav = new ModelAndView("/review/view");
		ReviewDTO dto = ReviewService.getReview(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@GetMapping("/write")
	public void add() {}
	
	@PostMapping("/write")
	public String write(ReviewDTO dto) {
		int row = ReviewService.write(dto);
		System.out.println(row != 0 ? "추가성공" : "추가실패");
		return "redirect:/review/list";
	}
	
	@GetMapping("/delete/{idx}")
	public String delete(@PathVariable("idx")int idx) {
		int row = ReviewService.delete(idx);
		return "redirect:/review/list";
	}
}
