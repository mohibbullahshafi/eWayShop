package com.ewayshop.web.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.ewayshop.web.entity.Products;
import com.ewayshop.web.entity.Users;
import com.ewayshop.web.service.ProductsService;
import com.ewayshop.web.service.UsersService;

@Controller
public class ProductController {

	UsersService usersService;
	ProductsService productService;

	@Autowired
	public void setProductService(ProductsService productService) {
		this.productService = productService;
	}

	@Autowired
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}

	@RequestMapping("/showproducts")
	public String showUsers(Model model) {
		List<Products> products = usersService.getAllProducts();
		model.addAttribute("products", products);
		return "showproducts";
	}

	@RequestMapping("/createproduct")
	public String createUsers(Model model) {
		model.addAttribute(new Products());
		return "createproduct";
	}

	@RequestMapping("/demo")
	public String productShoeDemo(Model model) {
		// model.addAttribute(new Users());
		List<Products> products = usersService.getAllProducts();
		model.addAttribute("products", products);
		return "demo";
	}

	@RequestMapping(value = "/buy", method = RequestMethod.GET)
	public String handlePost(@RequestParam String action, Model m, @Valid Products products) {
		if (action.equals("save")) {

			return "payment";
		} else if (action.equals("renew")) {
			// handle renew
		}
		m.addAttribute("name", "change");
		return "home";
	}

	@RequestMapping(value = "/docreateproduct", method = RequestMethod.POST)
	public String showCreated(Model model, @Valid Products products, BindingResult result) {
		if (result.hasErrors()) {
			return "createproduct";
		}
		productService.createProduct(products);
		return "productcreated";
	}

	/*
	 * @RequestMapping(value = "/docreate", method = RequestMethod.POST) public
	 * String showCreated(Model model, @Valid Users users, BindingResult result)
	 * { if (result.hasErrors()) { return "createuser"; }
	 * usersService.createuser(users); return "usercreated"; }
	 */

}
