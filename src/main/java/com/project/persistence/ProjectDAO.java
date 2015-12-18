package com.project.persistence;

import java.util.List;

import com.project.domain.ProjectVO;

public interface ProjectDAO {

	public void create(ProjectVO vo) throws Exception;

	public ProjectVO read(Integer id) throws Exception;
	
	public void update(ProjectVO vo) throws Exception;
	
	public void delete(Integer id) throws Exception;
	
	public List<ProjectVO> listAll() throws Exception;

}
