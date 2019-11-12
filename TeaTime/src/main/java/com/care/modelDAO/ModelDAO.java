package com.care.modelDAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.care.modelDTO.MemberDTO;

@Repository
public class ModelDAO {
	private static final String namespace="com.care.ttbatis.ttMapper";

	@Autowired
	private SqlSession sqlSession;

	public void register(MemberDTO dto) {
		sqlSession.insert(namespace+".regmember",dto);
	}
}
