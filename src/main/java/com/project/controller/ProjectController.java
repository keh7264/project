package com.project.controller;

import java.util.HashMap;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.project.domain.EmployeeProjectVO;
import com.project.domain.ProjectVO;
import com.project.service.ProjectService;

@Controller
@RequestMapping("/project/*")
public class ProjectController {
	private static final Logger logger = LoggerFactory
			.getLogger(ProjectController.class);

	@Inject
	private ProjectService service;

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET(ProjectVO project, Model model) throws Exception {
		logger.info("register get...........................");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registerPOST(ProjectVO project, RedirectAttributes rttr)
			throws Exception {
		logger.info("register post.............");

		settingDateIsNull(project);
		service.register(project);
		rttr.addFlashAttribute("result", "success");

		return "redirect:/project/list";
	}

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void listAll(Model model) throws Exception {
		logger.info("show all list...........");
		model.addAttribute("list", service.listAll());
	}

	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public void read(@RequestParam("id") int id, Model model) throws Exception {
		model.addAttribute(service.read(id));
		model.addAttribute("employeeList", service.employeeList(id));
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyGET(@RequestParam("id") int id, Model model)
			throws Exception {
		model.addAttribute(service.read(id));
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(ProjectVO project, RedirectAttributes rttr)
			throws Exception {
		logger.info("modify post................................");
		settingDateIsNull(project);
		service.modify(project);
		rttr.addFlashAttribute("result", "success");

		return "redirect:/project/read?id="+project.getId();
	}

	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String remove(@RequestParam("id") int id, RedirectAttributes rttr)
			throws Exception {

		service.remove(id);

		rttr.addFlashAttribute("result", "success");
		return "redirect:/project/list";
	}
	
	@RequestMapping(value = "/employeeManagement/add", method = RequestMethod.POST)
	public String addEmployee(EmployeeProjectVO employeeProject,
			RedirectAttributes rttr) throws Exception {
		logger.info("(add employee) post................................");

		service.addEmployee(employeeProject);

		rttr.addFlashAttribute("result", "success");

		return "redirect:/project/employeeManagement/read?id="
				+ employeeProject.getProject_id();
	}

	@RequestMapping(value = "/employeeManagement/read", method = RequestMethod.GET)
	public void manageEmployee(@RequestParam("id") int id, Model model)
			throws Exception {
		logger.info("(add employee) get................................");

		model.addAttribute(service.read(id));
		model.addAttribute("employeeListAll", service.employeeList(id));
		model.addAttribute("others", service.otherEmployees(id));

	}

	@RequestMapping(value = "/employeeManagement/remove", method = RequestMethod.POST)
	public String removeEmployee(@RequestParam("employee_id") int employee_id,
			@RequestParam("project_id") int project_id, RedirectAttributes rttr)
			throws Exception {

		HashMap<String, Integer> map = new HashMap<String, Integer>();
		map.put("project_id", project_id);
		map.put("employee_id", employee_id);
		service.removeEmployeeFromProject(map);

		rttr.addFlashAttribute("result", "success");
		return "redirect:/project/employeeManagement/read?id=" + project_id;
	}

	//db에 ''이 아니라 null이 입력되게 설정
	public void settingDateIsNull(ProjectVO project){
		if("".equals(project.getStart_date()) ){
			project.setStart_date(null);
		}
		if("".equals(project.getEnd_date())){
			project.setEnd_date(null);
		}
	}
}
