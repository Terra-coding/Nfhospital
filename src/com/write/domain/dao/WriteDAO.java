package com.write.domain.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mybatis.config.MyBatisConfig;
import com.write.domain.vo.SuggestionsWriteVO;
import com.write.domain.vo.ThankyouWriteVO;

public class WriteDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public WriteDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//감사합니다 게시글 전체 목록
	public List<ThankyouWriteVO> thankyouWriteList(Map<String, Integer> writeMap) {
		return sqlSession.selectList("ThankyouWrite.thankyouWriteList", writeMap);
	}
	
	//감사합니다 게시글 상세보기
	public ThankyouWriteVO thankyouWriteSelect(int writeNum) {
		return sqlSession.selectOne("ThankyouWrite.thankyouWriteSelect", writeNum);
	}
		
	//게시글 전체 개수
	public int getTotal() {
		return sqlSession.selectOne("ThankyouWrite.getTotal");
	}
	
	//최근 게시글 번호
	public int getSeq() {
		return sqlSession.selectOne("ThankyouWrite.getSeq");
	}
	
	//내가 작성한 글 목록
	public List<ThankyouWriteVO> myWriteList(Map<String, Integer> writeMap){
		return sqlSession.selectList("ThankyouWrite.myWriteList");				
	}
		
	//내가 작성한 게시글 상세보기
	public ThankyouWriteVO myThankyouWriteSelect(int writeNum){
		return sqlSession.selectOne("ThankyouWrite.myThankyouWriteSelect", writeNum);				
	}
		
	//감사합니다 글 작성
	public void ThankyouInsert(ThankyouWriteVO thankyouWrite) {
		sqlSession.insert("ThankyouWrite.ThankyouInsert", thankyouWrite);
	}
	
	//감사합니다 글 수정
	public void ThankyouUpdate(ThankyouWriteVO thankyouWrite) {
		sqlSession.update("ThankyouWrite.ThankyouUpdate", thankyouWrite);
	}
		
	//감사합니다 글 삭제
	public void ThankyouDelete(int writeNum) {
		sqlSession.delete("ThankyouWrite.ThankyouDelete", writeNum);
	}
	
	
	
}