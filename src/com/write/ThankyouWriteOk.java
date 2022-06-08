package com.write;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.oreilly.servlet.MultipartRequest;
import com.write.domain.dao.WriteDAO;
import com.write.domain.vo.ThankyouWriteDTO;

public class ThankyouWriteOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		HashMap<String, Integer> writeMap = new HashMap<>();
		ActionInfo actionInfo = new ActionInfo();
		WriteDAO writeDAO = new WriteDAO();
		ThankyouWriteDTO thankyouWriteDTO = new ThankyouWriteDTO();
		
		
		
		thankyouWriteDTO.setTitle(req.getParameter("title"));
		System.out.println(req.getParameter("title"));
		thankyouWriteDTO.setContent(req.getParameter("content"));
		System.out.println(req.getParameter("content"));
		thankyouWriteDTO.setId(req.getParameter("id"));
		System.out.println(req.getParameter("id"));
		thankyouWriteDTO.setPhoneNum(req.getParameter("tel1")+"-"+req.getParameter("tel2")+"-"+req.getParameter("tel3"));
		System.out.println(req.getParameter("tel1"));
		System.out.println(req.getParameter("tel2"));
		System.out.println(req.getParameter("tel3"));
		
		
		//게시글 추가
		writeDAO.thankyouInsert(thankyouWriteDTO);
		
		
		actionInfo.setRedirect(true);
		actionInfo.setPath(req.getContextPath() + "/myWrite.jsp");
		
		return actionInfo;
		
		
		
	}
	
	
}
