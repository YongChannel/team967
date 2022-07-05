package org.myapp.service;

import java.util.List;

import org.myapp.domain.Criteria;
import org.myapp.domain.SupportVO;
import org.myapp.mapper.SupportMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;
@Service
@AllArgsConstructor
public class SupportServiceImpl implements SupportService{
	private SupportMapper supportMapper;
	
		//조달계획 목록보기
		@Override
		public List<SupportVO> getSupport(Criteria cri) {
			return supportMapper.getSupportWithPaging(cri);
		}
		
		//조달계획 등록
		@Override
		public void supportList1(SupportVO vo) {
			//mapper.insert(vo);
			supportMapper.insert(vo);   //글 등록시 글 번호 알기
		}
		
		//조달계획 수정
		@Override
		public boolean supportList(SupportVO vo) {
			return(supportMapper.update(vo)==1);
		}
		
		//조달계획 삭제
		@Override
		public boolean supportList(Long SupportNo) {
			return(supportMapper.delete(SupportNo)==1); 
		}

		

}
