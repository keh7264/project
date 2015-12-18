package com.project.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.project.domain.ProjectVO;
import com.project.persistence.ProjectDAO;

@Service
public class ProjectServiceImpl implements ProjectService {

	@Inject
	private ProjectDAO dao;
	
	@Override
	public void register(ProjectVO project) throws Exception {
		// TODO Auto-generated method stub
		dao.create(project);
	}

	@Override
	public ProjectVO read(Integer id) throws Exception {
		// TODO Auto-generated method stub
		return dao.read(id);
	}

	@Override
	public void modify(ProjectVO project) throws Exception {
		// TODO Auto-generated method stub
		dao.update(project);

	}

	@Override
	public void remove(Integer id) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(id);
	}

	@Override
	public List<ProjectVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return dao.listAll();
	}

}
