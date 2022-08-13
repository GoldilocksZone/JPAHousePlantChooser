package com.skilldistillery.houseplantchooser.dao;

import java.util.List;

import com.skilldistillery.houseplantchooser.entities.Plant;

public interface PlantDAO {
	List<Plant> findAll();
}
