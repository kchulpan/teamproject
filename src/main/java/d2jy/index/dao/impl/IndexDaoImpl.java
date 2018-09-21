package d2jy.index.dao.impl;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import d2jy.index.dao.IndexDao;

@Repository("indexDao")
public class IndexDaoImpl implements IndexDao
{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public void logIn() 
	{
		sqlSession.selectOne("");
	}

}
