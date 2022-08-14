package com.skilldistillery.houseplantchooser.data;

import java.util.List;

import com.skilldistillery.houseplantchooser.entities.LightLevel;

public interface LightLevelDAO {
	void addLightLevel(LightLevel lightLevel);
	LightLevel getLightLevel(int id);
	List<LightLevel> getAllLightLevels();
	void updateLightLevel(LightLevel lightLevel);
	void deleteLightLevel(LightLevel lightLevel);
}
