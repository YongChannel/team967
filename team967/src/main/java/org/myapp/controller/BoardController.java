package org.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/includes/*")
@Log4j
@AllArgsConstructor
public class BoardController {
	@GetMapping("/header")
	public void header() {
		
	}
}