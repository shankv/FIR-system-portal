package com.luv2code.springdemo.entity;


import java.sql.Time;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;



@Entity
@Table(name="missing_table")
public class missing {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	private int id;
	
	@NotEmpty
	@Pattern(regexp="[^0-9]+", message="only charcter is allow")
	@Size(min=2,max=20)
	@Column(name="name")
	private String name;
	
    @NotNull
	@Column(name="gender")
	private String gender;
	
    @NotNull
    @Max(value=110,message="Max age 110 allow")
	@Column(name="age")
	private int age;
	
    @NotNull
	@DateTimeFormat(pattern="dd/MM/yyyy")
	@Column(name="dob")
	private Date dob;
	
	@NotNull
    @Min(value=1000000000,message="invalid adhar  no")
	@Column(name="adhar_no")
	private Long adharNo;
	
	@DateTimeFormat(pattern="dd/MM/yyyy")	
	@Column(name="missing_date")
	private Date missingDate;
	
	@Column(name="missing_time")
	private Time missingTime;
	
	@Column(name="missing_place")
	private String missingPlace;
	
	
	@Column(name="status")
	private String status;
	
	@Column(name="discription")
	private String discription;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public Date getDob() {
		return dob;
	}

	public void setDob(Date dob) {
		this.dob = dob;
	}

	public Long getAdharNo() {
		return adharNo;
	}

	public void setAdharNo(Long adharNo) {
		this.adharNo = adharNo;
	}

	public Date getMissingDate() {
		return missingDate;
	}

	public void setMissingDate(Date missingDate) {
		this.missingDate = missingDate;
	}

	public Time getMissingTime() {
		return missingTime;
	}

	public void setMissingTime(Time missingTime) {
		this.missingTime = missingTime;
	}

	public String getMissingPlace() {
		return missingPlace;
	}

	public void setMissingPlace(String missingPlace) {
		this.missingPlace = missingPlace;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
	}

	@Override
	public String toString() {
		return "missing [id=" + id + ", name=" + name + ", gender=" + gender + ", age=" + age + ", dob=" + dob
				+ ", adharNo=" + adharNo + ", missingDate=" + missingDate + ", missingTime=" + missingTime
				+ ", missingPlace=" + missingPlace + ", status=" + status + ", discription=" + discription + "]";
	}

	

	
	
	
}
