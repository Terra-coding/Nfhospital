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
		String requestURL = req.getRequestURI();
		String command = requestURL.substring(req.getContextPath().length());
		ActionInfo actionInfo = null;

		if (command.equals("/write/ThankyouWriteOk.wr")) {
			actionInfo = new ThankyouWriteOk().execute(req, resp);

		} else if (command.equals("/write/ThankyouWrite.wr")) {
			actionInfo = new ActionInfo();
			actionInfo.setRedirect(true);
			actionInfo.setPath(req.getContextPath() + "/thankyouwrite.jsp");
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
