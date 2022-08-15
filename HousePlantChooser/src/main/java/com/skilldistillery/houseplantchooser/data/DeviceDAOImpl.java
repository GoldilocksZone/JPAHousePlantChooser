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
	public void addDevice(Device device) {
		em.persist(device);
	}

	@Override
	public Device getDevice(int id) {
		return em.find(Device.class, id);
	}
	
	@Override
	public List<Device> getAllDevices() {
		String jpql = "SELECT d FROM Device d";
		return em.createQuery(jpql, Device.class).getResultList();
	}
	
	@Override
	public void updateDevice(Device device) {
		Device toUpdate = em.find(Device.class, device.getId());
		toUpdate.setName(device.getName());
		toUpdate.setOwner(device.getOwner());
	}
	
	@Override
	public void deleteDevice(Device device) {
		em.remove(device);
	}

}
