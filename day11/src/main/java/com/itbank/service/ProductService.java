package com.itbank.service;

import java.io.File;
import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.model.ProductDTO;
import com.itbank.repository.ProductDAO;


@Service
public class ProductService {
	
	@Autowired private ProductDAO dao;
	
	public List<ProductDTO> getProductList() {
		return dao.selectList();
	}

	public ProductDTO getProduct(int idx) {
		return dao.selectOne(idx);
	}

	   private String saveDirectory = "C:\\upload";
	   
	   public ProductService() {
	      File dir = new File(saveDirectory);
	      if(dir.exists() == false) {
	         dir.mkdirs();
	      }
	   }
	   
	   public int add(ProductDTO dto) {
	      String img = dto.getUpload().getOriginalFilename();
	      System.out.println(dto.getUpload());
	      File f = new File(saveDirectory, img);
	      try {
	         dto.getUpload().transferTo(f);
	         
	      } catch (IllegalStateException | IOException e) {
	         e.printStackTrace();
	      }
	      
	      dto.setImg(img);
	      
	      return dao.insert(dto);
	   }

	public int delete(int idx) {
		return dao.delete(idx);
	}

}
