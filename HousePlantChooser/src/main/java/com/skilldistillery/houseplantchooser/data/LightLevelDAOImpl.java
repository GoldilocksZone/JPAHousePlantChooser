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
	public List<LightLevel> findAll() {
		String jpql = "SELECT ll FROM LightLevel ll";
		return em.createQuery(jpql, LightLevel.class).getResultList();
	}

}
