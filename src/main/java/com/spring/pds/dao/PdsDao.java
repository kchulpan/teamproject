package com.spring.pds.dao;

import java.util.HashMap;
import java.util.List;

import com.spring.files.vo.FilesVo;
import com.spring.pds.vo.PdsVo;

public interface PdsDao 
{

	public List<PdsVo> getPdsList(HashMap<String, Object> map);

	public void setWrite(HashMap<String, Object> map);

	public PdsVo getPdsCont(HashMap<String, Object> map);

	public List<FilesVo> getFileList(HashMap<String, Object> map);

	public void setDeletePds(HashMap<String, Object> map);

	public void setPdsUpdate(HashMap<String, Object> map);	
}
