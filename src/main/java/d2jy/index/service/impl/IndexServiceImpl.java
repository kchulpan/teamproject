package d2jy.index.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import d2jy.index.dao.IndexDao;
import d2jy.index.service.IndexService;

@Service("indexService")
public class IndexServiceImpl implements IndexService
{
	@Autowired
	private IndexDao indexDao;
	@Override
	public void logIn() 
	{
		indexDao.logIn();
	}

}
