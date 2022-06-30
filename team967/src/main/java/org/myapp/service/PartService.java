package org.myapp.service;

import java.util.List;

import org.myapp.domain.Criteria;
import org.myapp.domain.PartVO;

public interface PartService {
	//목록보기
	public List<PartVO> getPart(Criteria cri);
	
}
