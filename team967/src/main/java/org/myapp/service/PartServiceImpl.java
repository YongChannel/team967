package org.myapp.service;

import java.util.List;

import org.myapp.domain.Criteria;
import org.myapp.domain.PartVO;
import org.myapp.mapper.PartMapper;
import org.springframework.stereotype.Service;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class PartServiceImpl implements PartService {
	private PartMapper partMapper;
	
	//목록보기
	@Override
	public List<PartVO> getPart(Criteria cri) {
		return partMapper.getPartWithPaging(cri);
	}
	
	
}
