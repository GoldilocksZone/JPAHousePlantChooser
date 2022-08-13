package com.skilldistillery.houseplantchooser.data;

import java.util.List;

import com.skilldistillery.houseplantchooser.entities.Device;

public interface DeviceDAO {
	List<Device> findAll();
}
