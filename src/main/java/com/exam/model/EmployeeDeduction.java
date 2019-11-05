package com.exam.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class EmployeeDeduction {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)

	private long id;
	private String first_name;
	private String surname;
	private String email;
	private String address;
	private String department;
	private String designation;
	private double gross_salary;
	private double lifeinsurance;
	private double advance;
	private double mealcharge;
	private double contribution_pf;
	private double other;
	private double netpay;
	

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

	public double getGross_salary() {
		return gross_salary;
	}

	public void setGross_salary(double gross_salary) {
		this.gross_salary = gross_salary;
	}

	public double getLifeinsurance() {
		return lifeinsurance;
	}

	public void setLifeinsurance(double lifeinsurance) {
		this.lifeinsurance = lifeinsurance;
	}

	public double getAdvance() {
		return advance;
	}

	public void setAdvance(double advance) {
		this.advance = advance;
	}

	public double getMealcharge() {
		return mealcharge;
	}

	public void setMealcharge(double mealcharge) {
		this.mealcharge = mealcharge;
	}

	public double getContribution_pf() {
		return contribution_pf;
	}

	public void setContribution_pf(double contribution_pf) {
		this.contribution_pf = contribution_pf;
	}

	public double getOther() {
		return other;
	}

	public void setOther(double other) {
		this.other = other;
	}
	

	public double getNetpay() {
		return netpay;
	}

	public void setNetpay(double netpay) {
		this.netpay = netpay;
	}

	@Override
	public String toString() {
		return "EmployeeDeduction [id=" + id + ", first_name=" + first_name + ", surname=" + surname + ", email="
				+ email + ", address=" + address + ", department=" + department + ", designation=" + designation
				+ ", gross_salary=" + gross_salary + ", lifeinsurance=" + lifeinsurance + ", advance=" + advance
				+ ", mealcharge=" + mealcharge + ", contribution_pf=" + contribution_pf + ", other=" + other
				+ ", netpay=" + netpay + "]";
	}

	
	

	

}
