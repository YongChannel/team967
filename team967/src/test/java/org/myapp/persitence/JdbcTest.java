package org.myapp.persitence;

import static org.junit.Assert.fail;

import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;



@Log4j
public class JdbcTest {
	@Test
	public void testConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "team967", "1234");
		
			log.info("성공");
		} catch(Exception e) {
			e.printStackTrace();
			fail(e.getMessage());
		}
		
	}
}
