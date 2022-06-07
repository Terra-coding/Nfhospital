package com.member;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.member.action.ActionInfo;
import com.reservation.ReservationCheckOk;
import com.reservation.ReservationOk;

public class MemberFrontController extends HttpServlet {

   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doProcess(req, resp);
   }

   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doProcess(req, resp);
   }

   protected void doProcess(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      String requestURL = req.getRequestURI();
      String command = requestURL.substring(requestURL.lastIndexOf("/") + 1);
      ActionInfo actionInfo = null;

      if (command.equals("JoinOk.me")) { //회원가입
         actionInfo = new MemberJoinOk().execute(req, resp);

      } else if (command.equals("Join.me")) {
         actionInfo = new ActionInfo();
         actionInfo.setRedirect(true);
         actionInfo.setPath(req.getContextPath() + "/join.jsp");
         
      } else if (command.equals("CheckIdOk.me")) { //아이디 중복 체크
         new CheckIdOk().execute(req, resp);

      } else if(command.equals("MemberLoginOk.me")) { //로그인
         actionInfo = new MemberLoginOk().execute(req, resp);
         
      } else if(command.equals("CheckCodeOk.me")) {// 휴대폰 인증
         new CheckCodeOk().execute(req, resp);
      
      } else if(command.equals("FindIdOk.me")) {
         new FindIdOk().execute(req, resp);
      
      } else if(command.equals("FindPwOk.me")){
         new FindPwOk().execute(req, resp);
   
      } else if(command.equals("LogOutOk.me")) {
         actionInfo = new LogOutOk().execute(req, resp);
      
      } else if(command.equals("MemberLogin.me")) {
         actionInfo = new MemberLogin().execute(req, resp);
      
      }else if(command.equals("ProfileChangeOk.me")) {
         System.out.println("들어옴");
//         actionInfo = new ProfileChangeOk().execute(req, resp);
      
      }else {
         // 404 일 때 출력할 에러 페이지 경로 작성

      }

      
      
/*      if (command.equals("ReservationOk.me")) {
         actionInfo = new ReservationOk().execute(req, resp);

      } else if (command.equals("Reservation.me")) {
         actionInfo = new ActionInfo();
         actionInfo.setRedirect(true);
         actionInfo.setPath(req.getContextPath() + "/reservation.jsp");
      } else if (command.equals("ReservationCheckOk.me")) {
         new ReservationCheckOk().execute(req, resp);

      } else {
         // 404 일 때 출력할 에러 페이지 경로 작성
      }*/

      
      
      
      
      if(actionInfo != null) {
         if(actionInfo.isRedirect()) {
            resp.sendRedirect(actionInfo.getPath());
         }else {
            RequestDispatcher dispatcher = req.getRequestDispatcher(actionInfo.getPath());
            dispatcher.forward(req, resp);
         }
      }
   
   }
}