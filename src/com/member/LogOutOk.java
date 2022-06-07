package com.member;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.action.Action;
import com.member.action.ActionInfo;

public class LogOutOk implements Action{

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		HttpSession session = req.getSession();
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		ActionInfo actionInfo = new ActionInfo();
			
			session.invalidate();
			
			actionInfo.setRedirect(true);
			actionInfo.setPath(req.getContextPath() + "/mainpage.jsp");

		return actionInfo;
	}

}
