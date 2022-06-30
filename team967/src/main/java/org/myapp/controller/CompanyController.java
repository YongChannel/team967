package org.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/company/*")
@Log4j
@AllArgsConstructor
public class CompanyController {
	@GetMapping("/companyList")
	public void companyList() {
		
	}
}
