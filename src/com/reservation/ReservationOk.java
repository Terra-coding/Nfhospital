package com.reservation;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.Action;
import com.member.action.ActionInfo;
import com.reservation.domain.dao.ReservationDAO;
import com.reservation.domain.vo.ReservationVO;

public class ReservationOk implements Action{
	@Override
	public ActionInfo execute(HttpServletRequest req, HttpServletResponse resp) throws IOException {
		req.setCharacterEncoding("UTF-8");
		ReservationVO reservationVO = new ReservationVO();
		ReservationDAO reservationDAO = new ReservationDAO();
		ActionInfo actionInfo = new ActionInfo();
		
		reservationVO.setId(req.getParameter("id"));
		reservationVO.setName(req.getParameter("name"));
		reservationVO.setPhoneNum(req.getParameter("phoneNum"));
		reservationVO.setMedicalDept(req.getParameter("medicalDept"));
		reservationVO.setDoctor(req.getParameter("doctor"));
		reservationVO.setScheduleDate(req.getParameter("scheduleDate"));
		reservationVO.setMedicalDate(req.getParameter("medicalDate"));
		
		reservationDAO.reservation(reservationVO);		
		
		req.setAttribute("medicalDept", reservationVO.getMedicalDept());
		
		
		actionInfo.setRedirect(false);
		actionInfo.setPath("/confirmreservation.jsp");
		
		return actionInfo;
	}
	
}
