package org.myapp.mapper;

import java.util.List;

import org.myapp.domain.Criteria;
import org.myapp.domain.SupportVO;

public interface SupportMapper {
		//조달계획 목록보기
		public List<SupportVO> getSupport();
		
		//목록보기(페이지처리)
		public List<SupportVO> getSupportWithPaging(Criteria cri);
		
		//조달계획 등록1
		public void insert(SupportVO vo);
		
		//조달계획 등록2(등록된 글 번호를 알아야 하는 경우 즉, PK값을  알아야 하는 경우)
		public void insertSelectKey(SupportVO vo);
		
		//조달계획 수정
		public int update(SupportVO vo);
		
		//조달계획 삭제
		public int delete(Long SupportNo);
		
	}

