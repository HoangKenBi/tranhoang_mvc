package com.example.tranhoang_mvc.service;

import com.example.tranhoang_mvc.entity.Employee;
import com.example.tranhoang_mvc.repsitory.EmployeeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

public interface EmployeeService {
    Employee createEmployee(Employee employee);
    List<Employee> findAllEmployees();
    Optional<Employee> findEmployeeById(Long id);
}
