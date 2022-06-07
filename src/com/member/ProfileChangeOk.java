package com.member;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.member.domain.dao.MemberInfoDAO;
import com.member.domain.vo.MemberInfoVO;

public class ProfileChangeOk implements Action{

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		MemberInfoVO memberInfoVO = new MemberInfoVO();
		MemberInfoDAO memberInfoDAO = new MemberInfoDAO();
		HashMap<String,String> memberInfoMap = new HashMap<>();
		HttpSession session = req.getSession();
		ActionInfo actionInfo = new ActionInfo();
		memberInfoVO.setEmail(req.getParameter("email1")+ "@" + req.getParameter("email2"));
		memberInfoVO.setAddress(req.getParameter("address"));
		memberInfoVO.setAddPhoneNum(req.getParameter("addphone1") + "-" + req.getParameter("addphone2") + "-" + req.getParameter("addphone3"));
		memberInfoVO.setId(req.getParameter("id"));
		
		
		memberInfoDAO.profileChange(memberInfoVO);
		
		memberInfoMap.put("id", memberInfoVO.getId());
		session.setAttribute("list", memberInfoDAO.information(memberInfoMap)); 
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("LogOutOk.me");
		return actionInfo;
	}

}
