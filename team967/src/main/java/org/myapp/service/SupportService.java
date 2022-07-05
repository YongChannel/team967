package org.myapp.service;

import java.util.List;

import org.myapp.domain.Criteria;
import org.myapp.domain.SupportVO;

public interface SupportService {
	
		//조달계획 목록보기
		public List<SupportVO> getSupport(Criteria cri);
		
		//조달계획 등록
		public void supportList1(SupportVO vo);
		
		//조달계획 수정
		public boolean supportList(SupportVO vo);
		
		//조달계획 삭제
		public boolean supportList(Long SupportNo);
		
}
