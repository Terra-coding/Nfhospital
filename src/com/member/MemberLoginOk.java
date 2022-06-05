package com.member;

import java.io.IOException;
import java.util.Base64;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.member.domain.dao.MemberInfoDAO;

public class MemberLoginOk implements Action {
	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ActionInfo actionInfo = new ActionInfo();
		HttpSession session = req.getSession();
		HashMap<String,String> memberInfoMap = new HashMap<>();
		MemberInfoDAO memberInfoDAO = new MemberInfoDAO();
		String id = req.getParameter("id");
		String password = req.getParameter("password");
		String name = null;
		password = new String(Base64.getEncoder().encode(password.getBytes())); 
		
		memberInfoMap.put("id", id);
		memberInfoMap.put("password", password);
		
		name = memberInfoDAO.login(memberInfoMap);
		
		if(name != null) {
			//로그인 성공
			session.setAttribute("name", name);
			session.setAttribute("id", id);
			session.setAttribute("list", memberInfoDAO.information(memberInfoMap));
			actionInfo.setPath("/mainpage.jsp");
		}else {
			//로그인 실패
			actionInfo.setPath("/MemberLogin.me");
		}
		
		actionInfo.setRedirect(false);
		return actionInfo;
	}
}
