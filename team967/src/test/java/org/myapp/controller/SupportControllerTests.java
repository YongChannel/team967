package org.myapp.controller;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.request.MockMvcRequestBuilders;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;

import lombok.extern.log4j.Log4j;

@WebAppConfiguration
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"file:src/main/webapp/WEB-INF/spring/root-context.xml",
	"file:src/main/webapp/WEB-INF/spring/appServlet/servlet-context.xml"})
@Log4j

public class SupportControllerTests {
	@Autowired
	private WebApplicationContext ctx;
	
	//컨트롤러를 테스트하기위해서는 MockMvc 객체를 이용한다.
		private MockMvc mockMvc;
		
		//테스트전에 mockMvc 객체 생성하기
		@Before
		public void setup() {
			mockMvc=MockMvcBuilders.webAppContextSetup(ctx).build();
		}
		
		//조달계획 목록
		@Test
		public void testsupportList() throws Exception {
			log.info(mockMvc.perform(MockMvcRequestBuilders.get("/support/supportList"))
			.andReturn().getModelAndView().getModelMap());
		}
		
		//조달계획 등록
		@Test
		public void testRegister() throws Exception {
			log.info(mockMvc.perform(MockMvcRequestBuilders.post("/support/supportList")
					.param("SupportNo", "1").param("MaterialProcess", "진척").param("DaySchedule", "2022.07.05").param("Requirement", "100").param("DeliveryDate", "2022.07.05").param("PartCode", "10")) //param(보낼 이름,값)
			.andReturn().getModelAndView().getViewName());
		}
		
		//조달계획 수정
		@Test
		public void testModify() throws Exception {
			log.info(mockMvc.perform(MockMvcRequestBuilders.post("/support/supportList")
					.param("bno", "141").param("title","수정0").param("content", "수정내용1").
					param("writer","bbb"))
			.andReturn().getModelAndView().getViewName());
		}
		
		//조달계획 삭제
		@Test
		public void testRemove() throws Exception {
			log.info(mockMvc.perform(MockMvcRequestBuilders.post("/support/supportList").param("SupportNo", "10"))
			.andReturn().getModelAndView().getViewName());
		}
		
}
