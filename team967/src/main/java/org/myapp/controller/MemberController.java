package org.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/includes/*")
@Log4j
@AllArgsConstructor
public class MemberController {
	//로그인화면
	@GetMapping("/login")
	public void login(Model model, String error, String logout) {
		log.info("error:" +error);
		log.info("logout:" +logout);
		
	}
	
	//회원가입
	@GetMapping("/signup")
	public void signup() {
		
	}
	
	@GetMapping("/customLogin")
	public void loginInput(Model model) {
		model.addAttribute("msg", "Access Denied");
	}
	
	@GetMapping("/header")
	public void header() {
		
	}
	
	//로그인버튼
	/*
	 * @PostMapping("/sign") public void signin() {
	 * 
	 * }
	 */
	

	
}
