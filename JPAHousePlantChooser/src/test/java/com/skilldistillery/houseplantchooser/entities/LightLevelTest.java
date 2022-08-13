package com.skilldistillery.houseplantchooser.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class LightLevelTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private LightLevel lightLevel;
	
	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAHousePlantChooser");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		lightLevel = em.find(LightLevel.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		lightLevel = null;
		em.close();
	}

	@Test
	void test_LightLevel_not_null() {
		assertNotNull(lightLevel);
	}
	
	@Test
	void test_LightLevel_mappings() {
		assertEquals(lightLevel.getCategory(), "darkness");
		assertTrue(lightLevel.getMin() == 0);
		assertTrue(lightLevel.getMax() == 199);
		assertEquals(lightLevel.getComments(), "effectively no light");
	}

}
