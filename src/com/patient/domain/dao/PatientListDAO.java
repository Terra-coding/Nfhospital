package com.patient.domain.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.mybatis.config.MyBatisConfig;
import com.patient.domain.vo.PatientListVO;


public class PatientListDAO {
	SqlSessionFactory sqlSessionFactory = MyBatisConfig.getSqlSessionFactory();
	SqlSession sqlSession;
	
	public PatientListDAO() {
		sqlSession = sqlSessionFactory.openSession(true);
	}
	
	public void add(PatientListVO patientListVO) {
		sqlSession.insert("PatientList.add", patientListVO);
	}
	
	public boolean checkID(String patientNum) {
		return (Integer)sqlSession.selectOne("PatientList.view", patientNum) == 1;
	}
	
}