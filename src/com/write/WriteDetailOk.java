package com.write;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.write.domain.dao.WriteDAO;
import com.write.domain.vo.ThankyouWriteVO;

public class WriteDetailOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		//사용자가 선택한 게시글 번호를 파라미터로 전달받는다.
		int writeNumber = Integer.parseInt(req.getParameter("writeNumber"));
		int page = Integer.parseInt(req.getParameter("page"));
		
		WriteDAO writeDAO = new WriteDAO();
		ActionInfo actionInfo = new ActionInfo();
		
		//게시글 번호로 조회한 게시글의 전체 정보를 requestScope에 저장한다.
		req.setAttribute("board", writeDAO.myWriteSelect(writeNumber));
		req.setAttribute("page", page);
		
		
		//requestScope에 데이터를 담았기 때문에 forward로 페이지까지 req객체를 유지한다.
		actionInfo.setRedirect(false);
		actionInfo.setPath("/app/board/boardDetail.jsp");
		
		return actionInfo;
	}
		
}
	
	

