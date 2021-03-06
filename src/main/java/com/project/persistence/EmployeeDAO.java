package com.project.persistence;

import java.util.HashMap;
import java.util.List;

import com.project.domain.EmployeeProjectVO;
import com.project.domain.EmployeeVO;
import com.project.domain.ProjectVO;

public interface EmployeeDAO {

	public void create(EmployeeVO vo) throws Exception;

	public EmployeeVO read(Integer id) throws Exception;

	public void update(EmployeeVO vo) throws Exception;

	public void delete(Integer id) throws Exception;

	public List<EmployeeVO> listAll() throws Exception;

	public List<ProjectVO> projectList(Integer id) throws Exception;

	public void addProject(EmployeeProjectVO vo) throws Exception;
	
	public List<ProjectVO> ohterProjects(Integer id) throws Exception;

	public void deleteEmployeeProject(HashMap<String, Integer> map) throws Exception;

}
