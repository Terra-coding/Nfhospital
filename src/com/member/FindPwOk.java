package com.member;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Base64;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.member.domain.dao.MemberInfoDAO;

public class FindPwOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
	      PrintWriter out = resp.getWriter();
	      MemberInfoDAO memberInfoDAO = new MemberInfoDAO();
	      JSONObject resultJSON = new JSONObject();
	      HashMap<String, String> memberInfoMap = new HashMap<>();
	      String decode = null;
	      
	      
	      String id = req.getParameter("id");
	      String name = req.getParameter("name");
	      String email = req.getParameter("email");
	      String phoneNum = req.getParameter("phoneNum");
	      String birth = req.getParameter("birth");
	      
	      if(email != null) {//이메일로 비밀번호 찾기
	    	  memberInfoMap.put("id", id);
	    	  memberInfoMap.put("email", email);
	    	  memberInfoMap.put("name", name);
	    	  memberInfoMap.put("birth", birth);
	    	  decode = new String(Base64.getDecoder().decode(memberInfoDAO.emailFindPw(memberInfoMap).getBytes()));
	    	  resultJSON.put("find", decode);
	      
	      }else {//휴대폰번호로 비밀번호 찾기
	    	  memberInfoMap.put("id", id);
	    	  memberInfoMap.put("name", name);
	    	  memberInfoMap.put("birth", birth);
	    	  memberInfoMap.put("phoneNum", phoneNum);
	    	  decode = new String(Base64.getDecoder().decode(memberInfoDAO.phoneNumFindPw(memberInfoMap).getBytes()));
	    	  System.out.println(decode);
	    	  resultJSON.put("find", decode);
	      }
	      
	      out.print(resultJSON.toJSONString());
	      out.close();
	    		  
		return null;
	}
}
