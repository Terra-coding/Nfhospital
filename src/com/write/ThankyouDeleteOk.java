package com.write;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.write.domain.dao.WriteDAO;
import com.write.domain.vo.ThankyouWriteVO;

public class ThankyouDeleteOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		int writeNumber = Integer.parseInt(req.getParameter("writeNumber"));
		WriteDAO writeDAO = new WriteDAO();
		ActionInfo actionInfo = new ActionInfo();
		
		writeDAO.thankyouDelete(writeNumber);
		
		actionInfo.setRedirect(true);
		actionInfo.setPath(req.getContextPath() + "/board/BoardListOk.bo");
		
		return actionInfo;
	}
		
}
	
	

