package com.write;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.write.domain.dao.WriteDAO;
import com.write.domain.vo.ThankyouWriteVO;

public class ThankyouWriteOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		ThankyouWriteVO thankyouWriteVO = new ThankyouWriteVO();
		WriteDAO writeDAO = new WriteDAO();
		ActionInfo actionInfo = new ActionInfo();
		
		thankyouWriteVO.setName(req.getParameter("name"));
		thankyouWriteVO.setPhoneNum(req.getParameter("tel1"+"-"+"tel2"+"-"+"tel3"));
		thankyouWriteVO.setTitle(req.getParameter("title"));
		thankyouWriteVO.setContent(req.getParameter("content"));
		thankyouWriteVO.setId(req.getParameter("id"));
		thankyouWriteVO.setTime(req.getParameter("time"));
		
		writeDAO.write(thankyouWriteVO);
		
		req.setAttribute("title", thankyouWriteVO.getTitle());
		req.setAttribute("content", thankyouWriteVO.getContent());
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/allThanksView.jsp");
		
		return actionInfo;
	}
	
	
}
