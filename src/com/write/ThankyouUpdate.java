package com.write;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.write.domain.dao.WriteDAO;
import com.write.domain.vo.ThankyouWriteVO;

public class ThankyouUpdate implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		int page = Integer.parseInt(req.getParameter("page"));
		int writeNumber = Integer.parseInt(req.getParameter("writeNumber"));
		ActionInfo actionInfo = new ActionInfo();
		
		WriteDAO writeDAO = new WriteDAO();
		
		// 회원의 번호로 게시글의 정보 뿐만 아니라 회원의 아이디까지 가져와주는 쿼리 실행
		req.setAttribute("write", writeDAO.myWriteSelect(writeNumber));
		req.setAttribute("page", page);
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/write/writeUpdate.jsp");
		
		return actionInfo;
	}
		
}
	
	

