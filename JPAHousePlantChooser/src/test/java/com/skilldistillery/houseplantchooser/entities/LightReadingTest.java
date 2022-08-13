package com.skilldistillery.houseplantchooser.entities;

import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

class LightReadingTest {
	private static EntityManagerFactory emf;
	private EntityManager em;
	private LightReading lightReading;

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
		lightReading = em.find(LightReading.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		lightReading = null;
	}

	@Test
	void test_LightReading_not_null() {
		assertNotNull(lightReading);
	}

}
