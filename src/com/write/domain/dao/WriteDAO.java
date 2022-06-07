package com.write.domain.dao;

import java.util.List;

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
	
	//내가 작성한 글 목록
	public List<ThankyouWriteVO> writeList(){
		return sqlSession.selectList("Write.writeList");				
	}
	
	//내가 작성한 글 선택 출력
	public ThankyouWriteVO writeChoose(){
		return sqlSession.selectOne("Write.writeChoose");				
	}
	
	//글 작성
	public void write(ThankyouWriteVO thankyouWriteVO) {
		sqlSession.insert("ThankyouWrite.write", thankyouWriteVO);
	}
	
	//글 수정
	public void writeUpdate(ThankyouWriteVO thankyouWriteVO) {
		sqlSession.update("ThankyouWrite.writeUpdate", thankyouWriteVO);
	}
	
	//글 삭제
	public void writeDelete(ThankyouWriteVO thankyouWriteVO) {
		sqlSession.delete("ThankyouWrite.writeDelete", thankyouWriteVO);
	}
}