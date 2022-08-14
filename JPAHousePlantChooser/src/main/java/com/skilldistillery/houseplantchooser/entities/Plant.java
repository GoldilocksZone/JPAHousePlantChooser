package com.skilldistillery.houseplantchooser.entities;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Plant {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(name = "scientific_name")
	private String scientificName;
	@Column(name = "common_name")
	private String commonName;
	@Column(name = "light_requirement")
	private int lightRequirement;

	public Plant() {

	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getScientificName() {
		return scientificName;
	}

	public void setScientificName(String scientificName) {
		this.scientificName = scientificName;
	}

	public String getCommonName() {
		return commonName;
	}

	public void setCommonName(String commonName) {
		this.commonName = commonName;
	}

	public int getLightRequirement() {
		return lightRequirement;
	}

	public void setLightRequirement(int lightRequirement) {
		this.lightRequirement = lightRequirement;
	}

	@Override
	public String toString() {
		return "Plant [id=" + id + ", scientificName=" + scientificName + ", commonName=" + commonName
				+ ", lightRequirement=" + lightRequirement + "]";
	}

}
