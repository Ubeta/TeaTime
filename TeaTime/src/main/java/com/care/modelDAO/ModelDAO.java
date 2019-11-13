package com.care.modelDAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.care.modelDTO.CategoryDTO;
import com.care.modelDTO.MemberDTO;

@Repository
public class ModelDAO {
	private static final String namespace="com.care.ttbatis.ttMapper";
	private String duplication = null;
	@Autowired
	private SqlSession sqlSession;

	public String register(MemberDTO dto, String id, String tel, String mail) {
		
		
		
			String resultId = sqlSession.selectOne(namespace+".idchk",id);
			String resultTel = sqlSession.selectOne(namespace+".telchk",tel);
			String resultMail = sqlSession.selectOne(namespace+".mailchk",mail);
			System.out.println("id : " + resultId);
			System.out.println("tel : " + resultTel);
			System.out.println("mail : " +resultMail);
			if(resultId==null) {
				resultId = "ok1";
			}
			if(resultTel==null) {
				resultTel = "ok2";
			}
			if(resultMail==null) {
				resultMail = "ok3";
			}
			
			try {
				if(resultId.equals(id)) {
					duplication = "iddu";
				}else if(resultTel.equals(tel)) {
					duplication = "teldu";
				}else if(resultMail.equals(mail)) {
					duplication = "maildu";	
				}else if(resultId.equals("ok1") && resultTel.equals("ok2") && resultMail.equals("ok3")){
					System.out.println("중복 없음");
					sqlSession.insert(namespace+".regmember",dto);
					duplication = "regiOk";
				}
			}catch(Exception e) {
				System.out.println("레지스터 DB에러");
				e.printStackTrace();
			}
				//System.out.println("인서트 실행!!");
			//sqlSession.insert(namespace+".regmember",dto);
	
		return duplication;

	}
	
	
	public MemberDTO loginchk(String m_id) {
		return sqlSession.selectOne(namespace+".loginchk",m_id);
	}
	
	public String category(CategoryDTO cdto) {
		String cat_du = null;
		try {
			if(duplication.equals("iddu")) {
				cat_du="c_iddu";
			}else if(duplication.equals("teldu")){
				cat_du="c_teldu";
			}else if(duplication.equals("maildu")) {
				cat_du="c_maildu";
			}else {			
				sqlSession.insert(namespace+".category_insert", cdto);		
				cat_du="catOk";
			}
		}catch(Exception e) {
			System.out.println("카테고리 DB에러");
			e.printStackTrace();
		}
		return cat_du;
		
	}
	
}
