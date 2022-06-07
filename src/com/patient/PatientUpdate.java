package com.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.member.domain.dao.PatientListDAO;
import com.member.domain.vo.PatientListVO;

public class PatientUpdate implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		PatientListVO patientListVO = new PatientListVO();
		PatientListDAO patientListDAO = new PatientListDAO();
		ActionInfo actionInfo = new ActionInfo();
		JSONObject resultJSON = new JSONObject(); 
		
		
		/*
		patientListVO.setPatientNum(Integer.parseInt(req.getParameter("patientNum")));
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
		patientListVO.setBloodPressure(req.getParameter("bloodPressure"));
		
		
		patientListDAO.update(patientListVO);
		
		
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
		
		req.setAttribute("patientList",patientListDAO.update(patientListVO));
		*/
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/patientUpdateForm.jsp");
		
		
		return actionInfo;
	}

}
