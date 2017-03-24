package com.ewayshop.web.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ewayshop.web.dao.UsersDao;
import com.ewayshop.web.entity.Products;
import com.ewayshop.web.entity.Users;

@Service
public class UsersService {
	private UsersDao dao;

	@Autowired
	public void setDao(UsersDao dao) {
		this.dao = dao;
	}

	public List<Users> getAllUsers() {
		return dao.getUsers();
	}

	public void createuser(Users users) {
		dao.createUser(users);
	}

	public List<Products> getAllProducts() {
		return dao.getAllProducts();
	}

}
