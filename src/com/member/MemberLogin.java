package com.member;

import java.io.IOException;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.Action;
import com.member.action.ActionInfo;


public class MemberLogin implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		ActionInfo actionInfo = new ActionInfo();
		
		actionInfo.setPath("/login.jsp");
		actionInfo.setRedirect(false);
		
		return actionInfo;
	}

}





















