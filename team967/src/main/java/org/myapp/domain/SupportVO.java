package org.myapp.domain;

import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SupportVO {
	private Long SupportNo; //계획번호
	private String MaterialProcess; //자재소요공정
	private Date DaySchedule; //소요일정
	private String Requirement; //소요량
	private Date DeliveryDate; //조달납기
	private Long PartCode; //품목코드
}
