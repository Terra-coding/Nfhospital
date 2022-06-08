package com.reservation;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.reservation.domain.dao.ReservationDAO;

public class ReservationDeleteOk implements Action {

	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		int reservationNum = Integer.parseInt(req.getParameter("reservationNum"));
		ReservationDAO reservationDAO = new ReservationDAO();
		ActionInfo actionInfo = new ActionInfo();
		
		reservationDAO.reservationDelete(reservationNum);
		
		actionInfo.setRedirect(true);
		actionInfo.setPath(req.getContextPath() + "/mainpage.jsp");
		
		return null;
	}

}
