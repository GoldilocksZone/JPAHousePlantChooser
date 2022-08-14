package com.skilldistillery.houseplantchooser.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.houseplantchooser.entities.LightReading;

@Service
@Transactional
public class LightReadingDAOImpl implements LightReadingDAO {
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public void addReading(LightReading lightReading) {
		em.persist(lightReading);
	}

	@Override
	public LightReading getReading(int id) {
		return em.find(LightReading.class, id);
	}
	
	@Override
	public List<LightReading> getAllReadings() {
		String jpql = "SELECT lr FROM LightReading lr";
		return em.createQuery(jpql, LightReading.class).getResultList();
	}

	@Override
	public void updateReading(LightReading lightReading) {
		LightReading toUpdate = em.find(LightReading.class, lightReading.getId());
		toUpdate.setDate(lightReading.getDate());
		toUpdate.setTime(lightReading.getTime());
		toUpdate.setDeviceId(lightReading.getDeviceId());
		toUpdate.setReading(lightReading.getReading());
	}
	
	@Override
	public void deleteReading(LightReading lightReading) {
		em.remove(lightReading);
	}

}
