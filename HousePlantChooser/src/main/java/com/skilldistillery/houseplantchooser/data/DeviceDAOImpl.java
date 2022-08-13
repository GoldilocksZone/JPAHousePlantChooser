package com.skilldistillery.houseplantchooser.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.houseplantchooser.entities.Device;

@Service
@Transactional
public class DeviceDAOImpl implements DeviceDAO {
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public List<Device> findAll() {
		String jpql = "SELECT d FROM Device d";
		return em.createQuery(jpql, Device.class).getResultList();
	}

}
