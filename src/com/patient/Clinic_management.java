package com.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.member.domain.dao.PatientListDAO;
import com.member.domain.vo.PatientListVO;

public class Clinic_management implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		PatientListVO patientListVO = new PatientListVO();
		PatientListDAO patientListDAO = new PatientListDAO();
		ActionInfo actionInfo = new ActionInfo();
		
		
		
		
		
		

		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/PatientOk.do");
		
		return actionInfo;
	}

}

		
		
	