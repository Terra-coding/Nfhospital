package com.patient;

import javax.servlet.http.HttpServlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.ActionInfo;

public class PatientFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURL = req.getRequestURI();
		String command = requestURL.substring(requestURL.lastIndexOf("/") + 1);
		ActionInfo actionInfo = null;

		if (command.equals("PatientOk.do")) {
			actionInfo = new PatientOk().execute(req, resp);
		}
		if (command.equals("Patientadd.do")) {
			actionInfo = new Patientadd().execute(req, resp);
		}
		if (command.equals("PatientaddOk.do")) {
			actionInfo = new PatientaddOk().execute(req, resp);
		}
		if (command.equals("Patientcheck.do")) {
			actionInfo = new PatientaddOk().execute(req, resp);
		}
		if (command.equals("PatientUpdate.do")) {
			actionInfo = new PatientaddOk().execute(req, resp);
		}

		if (command.equals("PatientDetail.do")) {
			actionInfo = new PatientDetail().execute(req, resp);
		}
		if (command.equals("PatientDetailDelete.do")) {
			actionInfo = new PatientDetailDelete().execute(req, resp);
		} else {
			// 404 일 때 출력할 에러 페이지 경로 작성
		}

		if (actionInfo != null) {
			if (actionInfo.isRedirect()) {
				resp.sendRedirect(actionInfo.getPath());
			} else {
				RequestDispatcher dispatcher = req.getRequestDispatcher(actionInfo.getPath());
				dispatcher.forward(req, resp);
			}
		}

	}

}