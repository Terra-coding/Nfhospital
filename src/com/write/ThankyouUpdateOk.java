package com.write;

import java.io.File;
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

public class ThankyouUpdateOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		
		ThankyouWriteVO thankyouWriteVO = new ThankyouWriteVO();
		WriteDAO writeDAO = new WriteDAO();
		ActionInfo actionInfo = new ActionInfo();
		
		int writeNumber = 0, page = 0;
		
		MultipartRequest multipartRequest = new MultipartRequest(req, "UTF-8");
		
		page = Integer.parseInt(multipartRequest.getParameter("page"));
		writeNumber = Integer.parseInt(multipartRequest.getParameter("writeNumber"));
		thankyouWriteVO.setTitle(multipartRequest.getParameter("Title"));
		thankyouWriteVO.setContent(multipartRequest.getParameter("Content"));
		thankyouWriteVO.setWriteNum(writeNumber);
		
		writeDAO.thankyouUpdate(thankyouWriteVO);
		
		actionInfo.setRedirect(true);
		
		//목록보기(페이지 기억)
		actionInfo.setPath(req.getContextPath() + "/write/WriteListOk.wr?page=" + page);
		
		return actionInfo;
	}
		
}
	
	

