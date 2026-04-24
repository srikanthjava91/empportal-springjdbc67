package com.emp.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.emp.model.Employee;

public class EmployeeDao {

	JdbcTemplate template;

	public void setTemplate(JdbcTemplate template) {
		this.template = template;
	}

	public int save(Employee emp) {
		String sql = "INSERT INTO Employee67(empid, firstname, lastname, age,salary,phone) VALUES (?, ?, ?, ?,?,?)";
		return template.update(sql, emp.getEmpid(), emp.getFirstname(), emp.getLastname(), emp.getAge(),
				emp.getSalary(), emp.getPhone());
	}

	// ✅ UPDATE using PreparedStatement
	public int update(Employee emp) {
		String sql = "UPDATE Employee67 SET firstname=?, lastname=?, age=?, salary=?,phone=? WHERE empid=?";
		return template.update(sql, emp.getFirstname(), emp.getLastname(), emp.getAge(),
				emp.getSalary(), emp.getPhone(),emp.getEmpid());
	}

	// ✅ DELETE using PreparedStatement
	public int delete(int empid) {
		String sql = "DELETE FROM Employee67 WHERE empid=?";
		return template.update(sql, empid);
	}

	// ✅ SELECT BY ID
	public Employee getEmpById(int id) {
		String sql = "SELECT * FROM Employee67 WHERE empid=?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<>(Employee.class));
	}

	// ✅ SELECT ALL
	public List<Employee> getEmployees() {
		String sql = "SELECT * FROM Employee67";

		return template.query(sql, new RowMapper<Employee>() {
			public Employee mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Employee e = new Employee();
				e.setEmpid(rs.getInt("empid"));
				e.setFirstname(rs.getString("firstname"));
				e.setLastname(rs.getString("lastname"));
				e.setAge(rs.getInt("age"));
				e.setSalary(rs.getDouble("salary"));
				e.setPhone(rs.getLong("phone"));
				return e;
			}
		});

	}

}
