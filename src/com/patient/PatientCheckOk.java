package com.patient;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.patient.domain.dao.PatientListDAO;
import com.patient.domain.vo.PatientListVO;

public class PatientCheckOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		/*
		String patientNum = req.getParameter("patientNum");
		String name = req.getParameter("name");
		
		//resultJSON.put("check", patientlistDAO.checkID(patientListNum));
		
		//resultJSON.put("check", patientlistDAO.checkID(patientListNum));
		
		if(patientlistDAO.add(name )) {
			resultJSON.put("result","sucess");
		}else {
			resultJSON.put("result","fail");
		}
		
		out.print(resultJSON.toJSONString());
		
		return null;*/
		req.setCharacterEncoding("UTF-8");
		PatientListVO patientListVO = new PatientListVO();
		PatientListDAO patientListDAO = new PatientListDAO();
		ActionInfo actionInfo = new ActionInfo();
		
		
		//String patientListNum = req.getParameter("patient_num");
		
		//resultJSON.put("check", patientlistDAO.checkID(patientListNum));
		
		req.setAttribute("patientList",patientListDAO.selectPatients());
		/*System.out.println(patientListDAO.selectPatients().get(0).getPatientNum());
		*/
		actionInfo.setRedirect(false);
		actionInfo.setPath("/employee01.jsp");
		
		return actionInfo;
	}
}
