package com.skilldistillery.houseplantchooser.data;

import java.util.List;

import com.skilldistillery.houseplantchooser.entities.LightReading;

public interface LightReadingDAO {
	List<LightReading> getAllReadings();
	void addReading(LightReading lightReading);
//	void deleteReading(LightReading lightReading);
}
