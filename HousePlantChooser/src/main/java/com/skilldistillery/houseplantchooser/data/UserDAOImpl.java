package com.skilldistillery.houseplantchooser.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.houseplantchooser.entities.User;

@Service
@Transactional
public class UserDAOImpl implements UserDAO {
	@PersistenceContext
	private EntityManager em;
	
	@Override
	public void addUser(User user) {
		em.persist(user);
	}

	@Override
	public User getUser(int id) {
		return em.find(User.class, id);
	}
	
	@Override
	public List<User> getAllUsers() {
		String jpql = "SELECT u FROM User u";
		return em.createQuery(jpql, User.class).getResultList();
	}
	
	@Override
	public boolean validateUserPassword(String password) {
		String jpql = "SELECT COUNT(u) FROM User u WHERE u.password = :password";
		int count = em.createQuery(jpql, Long.class)
						.setParameter("password", password)
						.getSingleResult()
						.intValue();
		if (count > 0) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public void updateUser(User user) {
		User toUpdate = em.find(User.class, user.getId());
		toUpdate.setFirstName(user.getFirstName());
		toUpdate.setLastName(user.getLastName());
	}
	
	@Override
	public void deleteUser(User user) {
		em.remove(user);
	}
}
