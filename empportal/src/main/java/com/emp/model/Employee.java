package com.emp.model;

public class Employee {

	private int empid;
	private String firstname;
	private String lastname;
	private int age;
	private double salary;
	private long phone;

	public Employee() {

	}

	public Employee(int empid, String firstname, String lastname, int age, double salary, long phone) {
		super();
		this.empid = empid;
		this.firstname = firstname;
		this.lastname = lastname;
		this.age = age;
		this.salary = salary;
		this.phone = phone;
	}

	public int getEmpid() {
		return empid;
	}

	public void setEmpid(int empid) {
		this.empid = empid;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public double getSalary() {
		return salary;
	}

	public void setSalary(double salary) {
		this.salary = salary;
	}

	public long getPhone() {
		return phone;
	}

	public void setPhone(long phone) {
		this.phone = phone;
	}

}
