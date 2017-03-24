package com.ewayshop.web.controllers;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.ewayshop.web.entity.Users;
import com.ewayshop.web.service.UsersService;

@Controller
public class UserControllers {

	UsersService usersService;

	@Autowired
	public void setUsersService(UsersService usersService) {
		this.usersService = usersService;
	}

	@RequestMapping("/")
	public String showHome(Model model) {
		return "home";
	}

	@RequestMapping("/login")
	public String showLogin(Model model) {
		return "login";
	}

	@RequestMapping("/showuser")
	public String showUsers(Model model) {
		List<Users> users = usersService.getAllUsers();
		model.addAttribute("users", users);
		return "showuser";
	}

	@RequestMapping("/createuser")
	public String createUsers(Model model) {
		model.addAttribute(new Users());
		return "createuser";
	}

	@RequestMapping(value = "/docreateuser", method = RequestMethod.POST)
	public String showCreated(Model model, @Valid Users users, BindingResult result) {
		if (result.hasErrors()) {
			return "createuser";
		}
		usersService.createuser(users);
		return "usercreated";
	}

}
