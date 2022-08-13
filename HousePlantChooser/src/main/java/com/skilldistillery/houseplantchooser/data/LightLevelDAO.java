package com.skilldistillery.houseplantchooser.data;

import java.util.List;

import com.skilldistillery.houseplantchooser.entities.LightLevel;

public interface LightLevelDAO {
	List<LightLevel> findAll();
}
