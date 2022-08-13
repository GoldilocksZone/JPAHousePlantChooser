package com.skilldistillery.houseplantchooser.data;

import java.util.List;

import com.skilldistillery.houseplantchooser.entities.Plant;

public interface PlantDAO {
	List<Plant> findAll();
}
