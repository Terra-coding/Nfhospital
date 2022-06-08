package com.write;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.ActionInfo;

public class WriteFrontController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doProcess(req, resp);
	}

	protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String requestURI = req.getRequestURI();
		String contextPath = req.getContextPath();
		String command = requestURI.substring(contextPath.length());
		ActionInfo actionInfo = null;

		switch(command) {
		case "/write/WriteListOk.wr":
			actionInfo = new WriteListOk().execute(req, resp);
			break;
		case "/write/WriteDetailOk.wr":
			actionInfo = new WriteDetailOk().execute(req, resp);
			break;
		case "/write/ThankyouWrite.wr":
			actionInfo = new ThankyouWrite().execute(req, resp);
			break;
		case "/write/ThankyouWriteOk.wr":
			actionInfo = new ThankyouWriteOk().execute(req, resp);


		} else if (command.equals("/write/ThankyouWrite.wr")) {
			actionInfo = new ActionInfo();
			actionInfo.setRedirect(true);
			actionInfo.setPath(req.getContextPath() + "/thankyouwrite.jsp");
		
		}else if (command.equals("ClientSound.wr")) {
			actionInfo = new ActionInfo();
			actionInfo.setRedirect(true);
			actionInfo.setPath("/clientSound.jsp");
		
		}else if (command.equals("MyWrite.wr")) {
			actionInfo = new ActionInfo();
			actionInfo.setRedirect(true);
			actionInfo.setPath("/myWrite.jsp");
			
		} else if (command.equals("Suggestions.wr")) {
			actionInfo = new ActionInfo();
			actionInfo.setRedirect(true);
			actionInfo.setPath("/suggestions.jsp");
			
		}else if (command.equals("ClientConsultation.wr")) {
			actionInfo = new ActionInfo();
			actionInfo.setRedirect(true);
			actionInfo.setPath("/clientConsultation.jsp");
			
		}else if (command.equals("Intro.wr")) {
			actionInfo = new ActionInfo();
			actionInfo.setRedirect(true);
			actionInfo.setPath("/intro.jsp");
			
		}else if (command.equals("AllThanksView.wr")) {
			actionInfo = new ActionInfo();
			actionInfo.setRedirect(true);
			actionInfo.setPath("/allThanksView.jsp");
			
		}else {
			// 404 일 때 출력할 에러 페이지 경로 작성

			break;
		case "/write/ThankyouDeleteOk.wr":
			actionInfo = new ThankyouDeleteOk().execute(req, resp);
			break;
		case "/write/ThankyouUpdate.wr":
			actionInfo = new ThankyouUpdate().execute(req, resp);
			break;
		case "/write/ThankyouUpdateOk.wr":
			actionInfo = new ThankyouUpdateOk().execute(req, resp);
			break;

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
