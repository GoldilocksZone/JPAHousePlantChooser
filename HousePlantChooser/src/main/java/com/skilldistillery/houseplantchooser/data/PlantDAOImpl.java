package com.skilldistillery.houseplantchooser.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.houseplantchooser.entities.Plant;

@Service
@Transactional
public class PlantDAOImpl implements PlantDAO {
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public void addPlant(Plant plant) {
		em.persist(plant);
	}

	@Override
	public Plant getPlant(int id) {
		return em.find(Plant.class, id);
	}
	
	@Override
	public List<Plant> getAllPlants() {
		String jpql = "SELECT p FROM Plant p";
		return em.createQuery(jpql, Plant.class).getResultList();
	}

	@Override
	public void updatePlant(Plant plant) {
		Plant toUpdate = em.find(Plant.class, plant.getId());
		toUpdate.setScientificName(plant.getScientificName());
		toUpdate.setLightRequirement(plant.getLightRequirement());
	}
	
	@Override
	public void deletePlant(Plant plant) {
		em.remove(plant);
	}
	
}
