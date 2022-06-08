package com.member;

import java.io.IOException;
import java.util.Base64;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.member.domain.dao.MemberInfoDAO;
import com.member.domain.vo.MemberInfoVO;

public class PasswordChangeOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		MemberInfoVO memberInfoVO = new MemberInfoVO();
		MemberInfoDAO memberInfoDAO = new MemberInfoDAO();
		HashMap<String,String> memberInfoMap = new HashMap<>();
		ActionInfo actionInfo = new ActionInfo();
		String password = null;
		String newpassword = null;
		String id = null;
		
		
		memberInfoVO.setPassword(new String(Base64.getEncoder().encode(req.getParameter("newpassword").getBytes())));
		
		password = new String(Base64.getEncoder().encode(req.getParameter("password").getBytes()));
		id = req.getParameter("id");
		newpassword = memberInfoVO.getPassword();
		
		System.out.println(password);
		System.out.println(newpassword);
		
		memberInfoMap.put("password", password);
		memberInfoMap.put("newpassword", newpassword);
		memberInfoMap.put("id", id);
		
		memberInfoDAO.changePassword(memberInfoMap);
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("MainPage.me");
		return actionInfo;
	}

}
