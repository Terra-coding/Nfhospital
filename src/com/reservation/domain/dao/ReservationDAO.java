package com.reservation.domain.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mybatis.config.MyBatisConfig;
import com.reservation.domain.vo.ReservationVO;

public class ReservationDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public ReservationDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	/*public void add(ReservationVO reservationVO) {
	}*/
	
	/*public boolean checkID(String id) {
		return (Integer)sqlSession.selectOne("Reservation.view", id) == 1;
	}*/
	
	//예약
	public void reservation(ReservationVO reservationVO) {
		sqlSession.insert("Reservation.reservation", reservationVO);
	}
		
	//예약조회
	public List<ReservationVO> selectReservations(int reservationNum){
		return sqlSession.selectList("Reservation.selectReservations", reservationNum);
	}
	
	//예약삭제
	public void reservationDelete(int reservationNum) {
		sqlSession.delete("Reservation.reservationDelete", reservationNum);
	}
	
	//예약수정
	public void reservationUpdate(ReservationVO reservationVO) {
		sqlSession.update("Reservation.reservationUpdate", reservationVO);
	}
	
}