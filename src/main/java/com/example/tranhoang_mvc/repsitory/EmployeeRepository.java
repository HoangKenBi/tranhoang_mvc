package com.example.tranhoang_mvc.repsitory;

import com.example.tranhoang_mvc.entity.Employee;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long> {
    // Custom queries or methods can be added here if needed
}
