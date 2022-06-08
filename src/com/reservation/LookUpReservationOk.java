package com.reservation;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.reservation.domain.dao.ReservationDAO;
import com.reservation.domain.vo.ReservationVO;

public class LookUpReservationOk implements Action {

	
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		
		ActionInfo actionInfo = new ActionInfo();
		int reservationNum = Integer.parseInt(req.getParameter("reservationNum"));
		
		ReservationDAO reservationDAO = new ReservationDAO();
		
		/*req.setAttribute("medicalDept", req.getParameter("medicalDept"));
		req.setAttribute("doctor", req.getParameter("doctor"));
		req.setAttribute("scheduleDate", req.getParameter("scheduleDate"));*/
		
		req.setAttribute("reservation", reservationDAO.selectReservations(reservationNum));
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/newreservation.jsp");
		
		return null;
	}

}

/*	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		ReservationVO reservationVO = new ReservationVO();
		ReservationDAO reservationDAO = new ReservationDAO();
		ActionInfo actionInfo = new ActionInfo();
		HttpSession session = req.getSession();
		String medicalDept = req.getParameter("medicalDept");
		String doctor = req.getParameter("doctor");
		String scheduleDate = req.getParameter("scheduleDate");
		
		session.setAttribute("medicalDept", medicalDept);
		session.setAttribute("doctor", doctor);
		session.setAttribute("scheduleDate", scheduleDate);
		
		reservationDAO.reservation(reservationVO);		
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/newreservation.jsp");
		
		return actionInfo;
			
	}

}*/
