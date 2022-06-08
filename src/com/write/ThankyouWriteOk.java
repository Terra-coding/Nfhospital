package com.write;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.write.domain.dao.WriteDAO;
import com.write.domain.vo.ThankyouWriteVO;

public class ThankyouWriteOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		HashMap<String, Integer> writeMap = new HashMap<>();
		ActionInfo actionInfo = new ActionInfo();
		WriteDAO writeDAO = new WriteDAO();
		ThankyouWriteVO thankyouWriteVO = new ThankyouWriteVO();
		
		MultipartRequest multipartRequest = new MultipartRequest(req, "UTF-8");

		thankyouWriteVO.setTitle(multipartRequest.getParameter("Title"));
		thankyouWriteVO.setContent(multipartRequest.getParameter("Content"));
		//세션은 req로 받아야 한다.
		thankyouWriteVO.setId(req.getSession().getAttribute("id"));
		
		//게시글 추가
		writeDAO.thankyouInsert(thankyouWriteVO);
		
		
		actionInfo.setRedirect(true);
		actionInfo.setPath(req.getContextPath() + "/write/WriteListOk.wr");
		
		return actionInfo;
		
		
		
	}
	
	
}
