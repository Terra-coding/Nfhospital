package com.write;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.member.domain.dao.MemberInfoDAO;
import com.write.domain.dao.WriteDAO;
import com.write.domain.vo.ThankyouWriteVO;

public class ThankyouWrite implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		HttpSession session = req.getSession();
		MemberInfoDAO memberInfoDAO = new MemberInfoDAO();
		ActionInfo actionInfo = new ActionInfo();
		
		String Id = memberInfoDAO.information(session.getAttribute("id"));
		
		req.setAttribute("Id", Id);
		req.setAttribute("page", req.getParameter("page"));
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/app/board/boardWrite.jsp");
		
		return actionInfo;
		
		
		
	}
	
	
}
