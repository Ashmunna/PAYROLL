package com.exam.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class EmployeeAllowances {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private long id;
	private String first_name;
	private String surname;
	private String email;
	private String address;
	private String department;
	private String designation;
	private double basic_salary;
	private double overtime_amount;
	private double houserent;
	private double ma;
	private double tfa;
	private double oa;
	private double ts;

	public long getId() {
		return id;
	}

	public void setId(long id) {
		this.id = id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getSurname() {
		return surname;
	}

	public void setSurname(String surname) {
		this.surname = surname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getDepartment() {
		return department;
	}

	public void setDepartment(String department) {
		this.department = department;
	}

	public String getDesignation() {
		return designation;
	}

	public void setDesignation(String designation) {
		this.designation = designation;
	}

	public double getOvertime_amount() {
		return overtime_amount;
	}

	public void setOvertime_amount(double overtime_amount) {
		this.overtime_amount = overtime_amount;
	}

	public double getHouserent() {
		return houserent;
	}

	public void setHouserent(double houserent) {
		this.houserent = houserent;
	}

	public double getMa() {
		return ma;
	}

	public void setMa(double ma) {
		this.ma = ma;
	}

	public double getTfa() {
		return tfa;
	}

	public void setTfa(double tfa) {
		this.tfa = tfa;
	}

	public double getOa() {
		return oa;
	}

	public void setOa(double oa) {
		this.oa = oa;
	}

	public double getTs() {
		return ts;
	}

	public void setTs(double ts) {
		this.ts = ts;
	}
	
	

	public double getBasic_salary() {
		return basic_salary;
	}

	public void setBasic_salary(double basic_salary) {
		this.basic_salary = basic_salary;
	}

	@Override
	public String toString() {
		return "EmployeeAllowances [id=" + id + ", first_name=" + first_name + ", surname=" + surname + ", email="
				+ email + ", address=" + address + ", department=" + department + ", designation=" + designation
				+ ", basic_salary=" + basic_salary + ", overtime_amount=" + overtime_amount + ", houserent=" + houserent
				+ ", ma=" + ma + ", tfa=" + tfa + ", oa=" + oa + ", ts=" + ts + "]";
	}

	

}
