package com.skilldistillery.houseplantchooser.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.houseplantchooser.entities.LightLevel;

@Service
@Transactional
public class LightLevelDAOImpl implements LightLevelDAO {
	@PersistenceContext
	private EntityManager em;

	@Override
	public void addLightLevel(LightLevel lightLevel) {
		em.persist(lightLevel);
	}

	@Override
	public LightLevel getLightLevel(int id) {
		return em.find(LightLevel.class, id);
	}

	@Override
	public List<LightLevel> getAllLightLevels() {
		String jpql = "SELECT lr FROM LightLevel lr";
		return em.createQuery(jpql, LightLevel.class).getResultList();
	}

	@Override
	public void updateLightLevel(LightLevel lightLevel) {
		LightLevel toUpdate = em.find(LightLevel.class, lightLevel.getId());
		toUpdate.setCategory(lightLevel.getCategory());
		toUpdate.setMin(lightLevel.getMin());
		toUpdate.setMax(lightLevel.getMax());
		toUpdate.setNotes(lightLevel.getNotes());
	}

	@Override
	public void deleteLightLevel(LightLevel lightLevel) {
		em.remove(lightLevel);
	}
}
