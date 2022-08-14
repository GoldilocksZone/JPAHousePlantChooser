package com.skilldistillery.houseplantchooser.data;

import java.util.List;

import com.skilldistillery.houseplantchooser.entities.LightReading;

public interface LightReadingDAO {
	void addReading(LightReading lightReading);
	LightReading getReading(int id);
	List<LightReading> getAllReadings();
	void updateReading(LightReading lightReading);
	void deleteReading(LightReading lightReading);
}
