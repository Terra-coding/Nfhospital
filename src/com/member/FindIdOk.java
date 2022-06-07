package com.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.member.domain.dao.MemberInfoDAO;

public class FindIdOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
	      PrintWriter out = resp.getWriter();
	      MemberInfoDAO memberInfoDAO = new MemberInfoDAO();
	      JSONObject resultJSON = new JSONObject();
	      HashMap<String, String> memberInfoMap = new HashMap<>();
	      
	      String name = req.getParameter("name");
	      String email = req.getParameter("email");
	      String phoneNum = req.getParameter("phoneNum");
	      String birth = req.getParameter("birth");
	      
	      if(email != null) {//이메일로 아이디 찾기
	    	  memberInfoMap.put("email", email);
	    	  memberInfoMap.put("name", name);
	    	  memberInfoMap.put("birth", birth);
	    	  resultJSON.put("find", memberInfoDAO.emailFindId(memberInfoMap));
	      
	      }else {//휴대폰번호로 아이디 찾기
	    	  memberInfoMap.put("name", name);
	    	  memberInfoMap.put("birth", birth);
	    	  memberInfoMap.put("phoneNum", phoneNum);
	    	  resultJSON.put("find", memberInfoDAO.phoneNumFindId(memberInfoMap));
	      }
	      
	      out.print(resultJSON.toJSONString());
	      out.close();
	    		  
		return null;
	}
}
