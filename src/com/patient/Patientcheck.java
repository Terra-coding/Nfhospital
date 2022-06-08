package com.patient;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.member.domain.dao.PatientListDAO;
import com.member.domain.vo.PatientListVO;

public class Patientcheck implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		PatientListVO patientListVO = new PatientListVO();
		PatientListDAO patientListDAO = new PatientListDAO();
		ActionInfo actionInfo = new ActionInfo();
		
		
		/*patientListVO.setPatientNum(Integer.parseInt(req.getParameter("patientNum")));
		patientListVO.setName(req.getParameter("name"));
		patientListVO.setPhoneNum(req.getParameter("phoneNum"));
		patientListVO.setAddPhoneNum(req.getParameter("addPhoneNum"));
		patientListVO.setGender(req.getParameter("gender"));
		patientListVO.setAge(Integer.parseInt(req.getParameter("age")));
		patientListVO.setHospitalRoom(req.getParameter("hospitalRoom"));		
		patientListVO.setHospitalDate(req.getParameter("hospitalDate"));
		patientListVO.setMedication(req.getParameter("medication"));
		patientListVO.setDisease(req.getParameter("disease"));
		patientListVO.setSymptom(req.getParameter("symptom"));
		patientListVO.setTemperature(Double.parseDouble(req.getParameter("temperature")));
		patientListVO.setBloodPressure(req.getParameter("bloodPressure"));*/
		
		
		
		
		req.setAttribute("patientList",patientListDAO.view());
		
		
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/employee01.jsp");
		
		return actionInfo;
	}

}
