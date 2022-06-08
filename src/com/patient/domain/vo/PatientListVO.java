package com.patient.domain.vo;

public class PatientListVO {
	private int patientNum;
	private String name;
	private String phoneNum;
	private String addPhoneNum;
	private String gender;
	private int age;
	private String hospitalRoom;
	private String hospitalDate;
	private String medication;//약물복용
	private String disease;//기저질환
	private String symptom;//현재증상
	private double temperature;
	private String bloodPressure;
	private String taking;
	private String birth;
	
	public String getTaking() {
		return taking;
	}

	public void setTaking(String taking) {
		this.taking = taking;
	}

	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}

	public PatientListVO() {;}

	public int getPatientNum() {
		return patientNum;
	}

	public void setPatientNum(int patientNum) {
		this.patientNum = patientNum;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneNum() {
		return phoneNum;
	}

	public void setPhoneNum(String phoneNum) {
		this.phoneNum = phoneNum;
	}

	public String getAddPhoneNum() {
		return addPhoneNum;
	}

	public void setAddPhoneNum(String addPhoneNum) {
		this.addPhoneNum = addPhoneNum;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getHospitalRoom() {
		return hospitalRoom;
	}

	public void setHospitalRoom(String hospitalRoom) {
		this.hospitalRoom = hospitalRoom;
	}

	public String getHospitalDate() {
		return hospitalDate;
	}

	public void setHospitalDate(String hospitalDate) {
		this.hospitalDate = hospitalDate;
	}

	public String getMedication() {
		return medication;
	}

	public void setMedication(String medication) {
		this.medication = medication;
	}

	public String getDisease() {
		return disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}

	public String getSymptom() {
		return symptom;
	}

	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}

	public double getTemperature() {
		return temperature;
	}

	public void setTemperature(double temperature) {
		this.temperature = temperature;
	}

	public String getBloodPressure() {
		return bloodPressure;
	}

	public void setBloodPressure(String bloodPressure) {
		this.bloodPressure = bloodPressure;
	}
	
	
}
