package com.patient;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.patient.domain.dao.PatientListDAO;

public class PatientCheckOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		PrintWriter out = resp.getWriter();
		PatientListDAO patientlistDAO = new PatientListDAO();
		JSONObject resultJSON = new JSONObject();
		
		String patientListNum = req.getParameter("patientlistPatientNum");
		resultJSON.put("check", patientlistDAO.checkID(patientListNum));
				
		return null;
	}
}
