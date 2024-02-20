package com.itbank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.repository.McdonaldDAO;
import com.itbank.repository.McdonaldDTO;

enum McdonaldCategorty {
	all(null),
	burger("버거"),
	drink("음료");
	
	private String columnValue;
	
	McdonaldCategory(String columnValue) {
		this.columnValue = columnValue;
	}
	public String getColumnValue() {
		return columnValue;
	}
}
@Service
public class McdonaldService {
	
	@Autowired private McdonaldDAO dao;
	
	public List<McdonaldDTO> getList(String catrgory) {
		String columnValue = null;
		
		McdonaldCategorty e1 = McdonaldCategorty.valueOff(category);
		columnValue = e1.getColumnName()
				;
		System.out.println("category" + catrgory);
		System.out.println("columnValue" + columnValue);
		System.out.println();
		return dao.selectList(columnValue);
	}
	public McdonaldDTO selectOne(int idx) {
		return dao.selectOne(idx);
	}
}
