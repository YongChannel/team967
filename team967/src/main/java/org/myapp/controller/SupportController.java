package org.myapp.controller;

import org.myapp.domain.Criteria;
import org.myapp.domain.SupportVO;
import org.myapp.service.SupportService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@RequestMapping("/support/*")
@Log4j
@AllArgsConstructor
public class SupportController {
	
	private SupportService service;
	
	//조달계획 목록//supportList?pageNum=2&amount=5(get) -> /support/supportList.jsp
	@GetMapping("/supportList") public void supportList(Model model, Criteria cri){ 
		log.info("supportList 요청"); }
	
	//조달계획 등록 /supportList(get)요청 -> /support.supportList
	@PostMapping("/supportList")
	public String support(SupportVO vo, RedirectAttributes rttr) {
		log.info("조달계획 등록 요청");
	service.supportList(vo);
	rttr.addAttribute("SupportNo", vo.getSupportNo());	//계획번호 전송
		return "redirect:/support/supportList";
	}
	
	//조달계획 수정 
	@PostMapping("/supportList")
	public String supportList(SupportVO vo, Criteria cri, RedirectAttributes rttr) {
		if(service.supportList(vo))
			rttr.addAttribute("support modify", "supportList");
		return "redirect:support/supportList?pageNum="+cri.getPageNum()+"&amount="+cri.getAmount();
			
	}
	
	//조달계획 삭제
	@PostMapping("/supportList")
	public String supportList(long SupportNo,Criteria cri, RedirectAttributes rttr ) {
		if(service.supportList(SupportNo))
			rttr.addAttribute("support remove", "supportList");
		return "redirect:support/supportList?pageNum="+cri.getPageNum()+"&amount="+cri.getAmount();
	}
	
	
}
	

