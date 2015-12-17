package com.project.persistence;

import java.util.List;

import com.project.domain.EmployeeVO;

public interface EmployeeDAO {

	public void create(EmployeeVO vo) throws Exception;

	public EmployeeVO read(Integer id) throws Exception;
	
	public void update(EmployeeVO vo) throws Exception;
	
	public void delete(Integer id) throws Exception;
	
	public List<EmployeeVO> listAll() throws Exception;

}
