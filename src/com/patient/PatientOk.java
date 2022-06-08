package com.patient;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.patient.domain.dao.PatientListDAO;

public class PatientOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		PatientListDAO patientListDAO = new PatientListDAO();
		ActionInfo actionInfo = new ActionInfo();
		

	
		req.setAttribute("patientList",patientListDAO.selectPatients());
		//req.setAttribute("patientSearch",patientListDAO.view());
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/employee01.jsp");
		
		return actionInfo;
	}
	
}

