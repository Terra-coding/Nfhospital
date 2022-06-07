package com.write;

import java.io.IOException;
import java.util.HashMap;

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
		HashMap<String, Integer> writeMap = new HashMap<>();
		ActionInfo actionInfo = new ActionInfo();
		WriteDAO writeDAO = new WriteDAO();
		
		
		//전체 게시글 개수
		int total = writeDAO.getTotal();
		//사용자가 요청한 페이지
		String temp = req.getParameter("page");
		
		int page = temp == null ? 1 : Integer.parseInt(temp);
		//한 페이지에 출력되는 게시글의 개수
		int rowCount = 9;
		//한 화면에 나오는 페이지 번호 수
		int pageSize = 10;
		
		//페이지에서 출력되는 게시글 중 첫번째 게시글의 인덱스
		int startRow = (page - 1) * rowCount;
		
		int startPage = ((page - 1) / pageSize) * pageSize + 1;
		int endPage = startPage + pageSize - 1;
		int realEndPage = (int)Math.ceil(total / (double)rowCount);
		
		endPage = endPage > realEndPage ? realEndPage : endPage;
		
		//DB에서 필요한 데이터를 Map에 담는다.
		writeMap.put("startRow", startRow);
		writeMap.put("rowCount", rowCount);

		//시작 인덱스와, 개수를 전달하여 게시글 목록을 가져온 뒤 requestScope에 담아준다.
		req.setAttribute("thankyouList", writeDAO.thankyouWriteList(writeMap));
		//현재 페이지를 requestScope에 담아준다.
		req.setAttribute("page", page);
		req.setAttribute("startPage", startPage);
		req.setAttribute("endPage", endPage);
		req.setAttribute("realEndPage", realEndPage);
		req.setAttribute("total", total);
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("allThanksView.jsp");
		
		return actionInfo;
		
		
		
		
	}
	
	
}
