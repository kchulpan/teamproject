package com.spring.pds.dao.impl;

import java.util.HashMap;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.spring.files.vo.FilesVo;
import com.spring.pds.dao.PdsDao;
import com.spring.pds.vo.PdsVo;

@Repository("pdsDao")
public class PdsDaoImpl implements PdsDao
{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List<PdsVo> getPdsList(HashMap<String, Object> map)
	{
		sqlSession.selectList("PDS.PDSList", map);
		List<PdsVo> pdsList = (List<PdsVo>) map.get("result");
		
		return pdsList;
	
	}

	@Override
	public void setWrite(HashMap<String, Object> map) 
	{
		sqlSession.insert("PDS.PDSInsert", map);
	}

	@Override
	public PdsVo getPdsCont(HashMap<String, Object> map) 
	{
		sqlSession.selectList("PDS.PDSCont", map);
		List<PdsVo> pdsVo = (List<PdsVo>) map.get("result");
		PdsVo pdsCont = pdsVo.get(0);
		return pdsCont;
	}

	@Override
	public List<FilesVo> getFileList(HashMap<String, Object> map)
	{
		sqlSession.selectList("PDS.FileList", map);
		List<FilesVo> fileList = (List<FilesVo>) map.get("result");
		return fileList;
	}

	@Override
	public void setDeletePds(HashMap<String, Object> map)
	{
		sqlSession.delete("PDS.PDSDelete", map);
	}

	@Override
	public void setPdsUpdate(HashMap<String, Object> map)
	{
		sqlSession.update("PDS.PDSUpdate", map);
	}
}
