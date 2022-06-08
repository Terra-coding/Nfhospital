package com.patient.domain.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.member.domain.vo.PatientListVO;
import com.mybatis.config.MyBatisConfig;


public class PatientListDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public PatientListDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	//환자 추가
	public void add(PatientListVO patientListVO) {
		sqlSession.insert("PatientList.add", patientListVO);
	}
	/*public boolean checkID(String patientNum) {
		return (Integer)sqlSession.selectOne("PatientList.view", patientNum) == 1;
	}*/
	//환자 전체목록
	public List<PatientListVO> selectPatients() {
		/*List<PatientListVO> p = sqlSession.selectList("PatientList.selectPatients");
		p.forEach(v->System.out.println(v.getPatientNum()));
		*/
		return sqlSession.selectList("PatientList.selectPatients");
	}
	
	//환자 삭제 
	public void delete(int patientNum) {
		sqlSession.delete("PatientList.delete", patientNum);
	}
	
	//환자 수정
	public void update(PatientListVO patientListVO) {
		sqlSession.update("PatientList.update", patientListVO);
	}
	
	//환자 검색
	public List<PatientListVO> view(){
		return sqlSession.selectList("PatientList.view");
	}
	
	//환자 상세페이지
	public List<PatientListVO> selectOne(int patientNum){
		return sqlSession.selectOne("PatientList.selectOne",patientNum);
	}
	
	
}