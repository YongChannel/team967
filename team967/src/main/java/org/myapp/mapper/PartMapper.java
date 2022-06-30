package org.myapp.mapper;

import java.util.List;

import org.myapp.domain.PartVO;
import org.myapp.domain.Criteria;

public interface PartMapper {
	//목록보기
	public List<PartVO> getPart();
	
	//목록보기-페이지처리
	public List<PartVO> getPartWithPaging(Criteria cri);
}
