package com.patient;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.patient.domain.dao.PatientListDAO;
import com.patient.domain.vo.PatientListVO;
import com.reservation.domain.dao.ReservationDAO;
import com.reservation.domain.vo.ReservationVO;

public class PatientOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		PatientListVO patientListVO = new PatientListVO();
		PatientListDAO patientListDAO = new PatientListDAO();
		ActionInfo actionInfo = new ActionInfo();
		
		patientListVO.setAddPhoneNum(req.getParameter("patientlistAddPhoneNum"));
		patientListVO.setAge(Integer.parseInt(req.getParameter("patientlistAge")));
		patientListVO.setBloodPressure(req.getParameter("patientlistBloodPressure"));
		patientListVO.setDisease(req.getParameter("patientlistDisease"));
		patientListVO.setGender(req.getParameter("patientlistGender"));
		patientListVO.setHospitalDate(req.getParameter("patientlistHospitalDate"));
		patientListVO.setHospitalRoom(req.getParameter("patientlistHospitalRoom"));
		patientListVO.setMedication(req.getParameter("patientlistMedication"));
		patientListVO.setName(req.getParameter("patientlistName"));
		patientListVO.setPatientNum(Integer.parseInt(req.getParameter("patientlistPatientNum")));
		patientListVO.setPhoneNum(req.getParameter("patientlistPhoneNum"));
		patientListVO.setSymptom(req.getParameter("patientlistSymptom"));
		patientListVO.setTemperature(Double.parseDouble(req.getParameter("patientlistTemperature")));
		
		patientListDAO.add(patientListVO);
		
		req.setAttribute("patientlistName", patientListVO.getName());
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/");
		
		return actionInfo;
	}
	
}

