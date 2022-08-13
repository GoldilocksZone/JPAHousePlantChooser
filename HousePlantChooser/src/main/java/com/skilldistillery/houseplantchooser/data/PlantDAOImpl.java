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
	public List<Plant> findAll() {
		String jpql = "SELECT p FROM Plant p";
		return em.createQuery(jpql, Plant.class).getResultList();
	}
	
}
