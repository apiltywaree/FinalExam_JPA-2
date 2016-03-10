package com.packt.webstore.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.packt.webstore.domain.Employee;
import com.packt.webstore.repository.EmployeeRepository;
import com.packt.webstore.service.EmployeeService;

@Service
@Transactional
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	EmployeeRepository employeeRepo;

	@Override
	public Employee save(Employee employee) {
		return employeeRepo.save(employee);
	}

	@Override
	public List<Employee> getAll() {
		return  (List<Employee>)employeeRepo.findAll();
	}

	@Override
	public Employee getEmployeeByNumber(int empNumber) {
		return employeeRepo.locateOneEmployeeByHisNumber(empNumber);
	}

}
