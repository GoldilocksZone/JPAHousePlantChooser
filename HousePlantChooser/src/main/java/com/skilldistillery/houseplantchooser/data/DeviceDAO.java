package com.skilldistillery.houseplantchooser.data;

import java.util.List;

import com.skilldistillery.houseplantchooser.entities.Device;

public interface DeviceDAO {
	void addDevice(Device device);
	Device getDevice(int id);
	List<Device> getAllDevices();
	void updateDevice(Device device);
	void deleteDevice(Device device);
}
