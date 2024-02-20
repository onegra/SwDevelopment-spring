package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.itbank.model.ProductDTO;
import com.itbank.service.ProductService;

@Controller
@RequestMapping("/product")
public class ProductController {
	
	@Autowired private ProductService productService;
	
	@GetMapping("/list")
	public ModelAndView productList() {
		ModelAndView mav = new ModelAndView("/product/list");
		List<ProductDTO> list = productService.getProductList();
		mav.addObject("list",list);
		return mav;
	}
	
	@GetMapping("/view/{idx}")
	public ModelAndView view(@PathVariable("idx")int idx) {
		ModelAndView mav = new ModelAndView("/product/view");
		ProductDTO dto = productService.getProduct(idx);
		mav.addObject("dto", dto);
		return mav;
	}
	
	@GetMapping("/add")
	public void add() {}
	
	@PostMapping("/add")
	public String add(ProductDTO dto) {
		int row = productService.add(dto);
		System.out.println(row != 0 ? "추가성공" : "추가실패");
		return "redirect:/product/list";
	}
	
	@GetMapping("/delete/{idx}")
	public String delete(@PathVariable("idx")int idx) {
		int row = productService.delete(idx);
		return "redirect:/product/list";
	}
}
