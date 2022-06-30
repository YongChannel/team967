package org.myapp.domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemberVO {
	private String employee; //회사명
	private Long password; //비밀번호
	private String name; //이름
	private String department; //부서명
}
