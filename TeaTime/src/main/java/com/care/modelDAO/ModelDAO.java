package com.care.modelDAO;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ModelDAO {

	@Autowired
	private SqlSession sqlSession;
	private final static String NAMESPACE = "com.care.ttbatis.ttmapper";
	
	
	
}
