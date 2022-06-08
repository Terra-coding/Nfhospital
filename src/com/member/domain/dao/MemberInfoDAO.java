package com.member.domain.dao;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.member.domain.vo.MemberInfoVO;
import com.mybatis.config.MyBatisConfig;

public class MemberInfoDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public MemberInfoDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//회원가입
	public void join(MemberInfoVO memberInfoVO) {
		sqlSession.insert("Member.join", memberInfoVO);
	}
	
	//로그인
	public String login(HashMap<String, String> memberInfoMap) {
		return sqlSession.selectOne("Member.login", memberInfoMap);
	}
	
	//로그인된 회원 정보 가져오기
	public MemberInfoVO information(HashMap<String, String> memberInfoMap) {
		return sqlSession.selectOne("Member.getInfo", memberInfoMap);
	}
	
	//아이디 중복검사
	public boolean checkID(String id) {
		return (Integer)sqlSession.selectOne("Member.checkId", id) == 1;
	}
	
	//이메일로 아이디 찾기
	public String emailFindId(HashMap<String, String> memberInfoMap) {
		return sqlSession.selectOne("Member.emailFindId", memberInfoMap);
	}
	//휴대폰번호로 아이디 찾기
	public String phoneNumFindId(HashMap<String, String> memberInfoMap) {
		return sqlSession.selectOne("Member.phoneNumFindId", memberInfoMap);
	}
	
	//이메일로 아이디 찾기
	public String emailFindPw(HashMap<String, String> memberInfoMap) {
		return sqlSession.selectOne("Member.emailFindPw", memberInfoMap);
	}
	//휴대폰번호로 아이디 찾기
	public String phoneNumFindPw(HashMap<String, String> memberInfoMap) {
		return sqlSession.selectOne("Member.phoneNumFindPw", memberInfoMap);
	}
	
	//회원정보 수정
	public void profileChange(MemberInfoVO memberInfoVO) {
		sqlSession.update("Member.profileChange" ,memberInfoVO);
	}

	public String information(Object attribute) {
		// TODO Auto-generated method stub
		return null;
	}
	
	//비밀번호 변경
	public void changePassword(HashMap<String, String> memberInfoMap) {
		sqlSession.update("Member.passwordChange", memberInfoMap);
	}
	
}