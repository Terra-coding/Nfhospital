package com.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.member.domain.dao.PatientListDAO;
import com.member.domain.vo.PatientListVO;

public class PatientaddOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		PatientListVO patientListVO = new PatientListVO();
		PatientListDAO patientListDAO = new PatientListDAO();
		ActionInfo actionInfo = new ActionInfo();
		
	
		patientListVO.setHospitalDate(req.getParameter("hospitalDate"));
		patientListVO.setHospitalRoom(req.getParameter("hospitalRoom"));	
		patientListVO.setName(req.getParameter("name"));
		patientListVO.setGender(req.getParameter("gender"));
	    patientListVO.setBloodPressure(req.getParameter("birth"));
	    patientListVO.setPhoneNum(req.getParameter("phoneNum"));
		patientListVO.setAddPhoneNum(req.getParameter("addPhoneNum"));
	    patientListVO.setBloodPressure(req.getParameter("taking"));
	    patientListVO.setDisease(req.getParameter("disease"));
		patientListVO.setSymptom(req.getParameter("symptom"));
		patientListVO.setTemperature(Double.parseDouble(req.getParameter("temperature")));
		patientListVO.setBloodPressure(req.getParameter("bloodPressure"));
	    
	    
	
		
		patientListDAO.add(patientListVO);
		
		
		
		//req.setAttribute("patientList",patientListDAO.add(patientListVO));
		//req.setAttribute("patientList",patientListDAO.selectPatients());
		/*System.out.println(patientListDAO.selectPatients().get(0).getPatientNum());
		*/
		req.setAttribute("taking",patientListVO.getTaking());
		req.setAttribute("birth",patientListVO.getBirth());
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

		
		
		
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/PatientOk.do");
		
		return actionInfo;
	}

}
