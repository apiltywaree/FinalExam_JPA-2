package com.packt.webstore.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.packt.webstore.domain.Employee;
import com.packt.webstore.service.EmployeeService;

@Controller
@RequestMapping({ "/employees" })
public class EmployeeController {

	@Autowired
	EmployeeService employeeService;

	@RequestMapping({ "", "/list" })
	public String listEmployees(Model model) {
		model.addAttribute("employees", employeeService.getAll());
		return "employees";
	}

	@RequestMapping("/employee")
	public String getEmployeeByNumber(Model model, @RequestParam("id") int empNumber) {
		List<Employee> employee=new ArrayList<>(); 
		employee.add(employeeService.getEmployeeByNumber(empNumber));
		model.addAttribute("employees", employee);
		return "employees";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	@PreAuthorize("hasRole('ROLE_ADMIN')")
	public String addNewEmployee(@ModelAttribute("newEmployee") Employee newEmployee) {
		return "addEmployee";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String processAddNewEmployee(@ModelAttribute("newEmployee") Employee employeeToBeAdded) {
		employeeService.save(employeeToBeAdded);
		return "redirect:/employees";
	}

}
