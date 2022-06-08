package com.reservation.domain.vo;

public class ReservationVO {
	private int reservationNum;
	private String id;
	private String name;
	private String phoneNum;
	private String medicalDept;
	private String doctor;
	private String scheduleDate;
	private String medicalDate;
	
	public ReservationVO() {;}

	public int getReservationNum() {
		return reservationNum;
	}


	public void setReservationNum(int reservationNum) {
		this.reservationNum = reservationNum;
	}



	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
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

	public String getMedicalDept() {
		return medicalDept;
	}

	public void setMedicalDept(String medicalDept) {
		this.medicalDept = medicalDept;
	}

	public String getDoctor() {
		return doctor;
	}

	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}

	public String getScheduleDate() {
		return scheduleDate;
	}

	public void setScheduleDate(String scheduleDate) {
		this.scheduleDate = scheduleDate;
	}

	public String getMedicalDate() {
		return medicalDate;
	}

	public void setMedicalDate(String medicalDate) {
		this.medicalDate = medicalDate;
	}
	
	
}
