package org.myapp.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.myapp.domain.Criteria;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/part/*")
@Log4j
@AllArgsConstructor
public class PartController {
	
	//목록보기 /partList?pageNum=2&amount=10(get) -> /part/partList.jsp
	@GetMapping("/partList")
	public void partList(Model model, Criteria cri) {
		log.info("partList 요청");
		
	}
	

	
}
