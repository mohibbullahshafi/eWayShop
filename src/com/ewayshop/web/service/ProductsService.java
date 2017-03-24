package com.ewayshop.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ewayshop.web.dao.ProductsDao;
import com.ewayshop.web.entity.Products;

@Service
public class ProductsService {
	private ProductsDao dao;

	@Autowired
	public void setDao(ProductsDao dao) {
		this.dao = dao;
	}

	public List<Products> getAllProducts() {
		return dao.getAllProducts();
	}

	public void createProduct(Products products) {
		dao.createProduct(products);
	}

}
