package com.patient;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.patient.domain.dao.PatientListDAO;
import com.patient.domain.vo.PatientListVO;

public class PatientDetail implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		PatientListVO patientListVO = new PatientListVO();
		PatientListDAO patientListDAO = new PatientListDAO();
		ActionInfo actionInfo = new ActionInfo();
		
		
		
	
		req.setAttribute("patientNum",patientListVO.getPatientNum());
		req.setAttribute("name",patientListVO.getName());
		req.setAttribute("phoneNum",patientListVO.getPhoneNum());
		req.setAttribute("addPhoneNum",patientListVO.getAddPhoneNum());
		req.setAttribute("gender",patientListVO.getGender());
		req.setAttribute("hospitalRoom",patientListVO.getHospitalRoom());
		req.setAttribute("hospitalDate",patientListVO.getHospitalDate());
		req.setAttribute("disease",patientListVO.getDisease());
		req.setAttribute("symptom",patientListVO.getSymptom());
		req.setAttribute("temperature",patientListVO.getTemperature());
		req.setAttribute("bloodPressure",patientListVO.getBloodPressure());
		req.setAttribute("medication",patientListVO.getMedication());
		
		req.setAttribute("patientList",patientListDAO.selectPatients());
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/patient_detail.jsp");
		return actionInfo;
	}

}
