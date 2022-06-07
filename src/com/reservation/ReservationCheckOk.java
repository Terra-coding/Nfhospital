package com.reservation;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.reservation.domain.dao.ReservationDAO;

public class ReservationCheckOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		 req.setCharacterEncoding("UTF-8");
	      PrintWriter out = resp.getWriter();
	      ReservationDAO reservationDAO = new ReservationDAO();
	      JSONObject resultJSON = new JSONObject(); 
	      
	      /*String reservationId = req.getParameter("reservationId");
	      resultJSON.put("check", reservationDAO.checkID(reservationId));*/
		
	      out.print(resultJSON.toJSONString());
	      out.close();
		return null;
	}
}
