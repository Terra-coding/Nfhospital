package com.write.domain.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mybatis.config.MyBatisConfig;
import com.write.domain.vo.SuggestionsWriteVO;
import com.write.domain.vo.ThankyouWriteDTO;
import com.write.domain.vo.ThankyouWriteVO;

public class WriteDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public WriteDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//감사합니다 게시글 전체 목록
	public List<ThankyouWriteDTO> thankyouWriteList(Map<String, Integer> writeMap) {
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
	public List<ThankyouWriteDTO> myWriteList(Map<String, Integer> writeMap){
		return sqlSession.selectList("ThankyouWrite.myWriteList");				
	}
		
	//내가 작성한 게시글 상세보기
	public ThankyouWriteDTO myWriteSelect(int writeNum){
		return sqlSession.selectOne("ThankyouWrite.myThankyouWriteSelect", writeNum);				
	}
		
	//감사합니다 글 작성
	public void thankyouInsert(ThankyouWriteDTO thankyouWriteDTO) {
		sqlSession.insert("ThankyouWrite.thankyouInsert", thankyouWriteDTO);
	}
	
	//감사합니다 글 수정
	public void thankyouUpdate(ThankyouWriteDTO thankyouWriteDTO) {
		sqlSession.update("ThankyouWrite.thankyouUpdate", thankyouWriteDTO);
	}
		
	//감사합니다 글 삭제
	public void thankyouDelete(int writeNum) {
		sqlSession.delete("ThankyouWrite.thankyouDelete", writeNum);
	}
	
	
	
}