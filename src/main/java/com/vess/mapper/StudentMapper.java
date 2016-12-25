package com.vess.mapper;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Select;

import com.vess.model.Student;

public interface StudentMapper {
	@Insert("INSERT INTO student(userName, password, firstName,"
			+ "lastName, dateOfBirth, emailAddress) VALUES"
			+ "(#{userName},#{password}, #{firstName}, #{lastName},"
			+ "#{dateOfBirth}, #{emailAddress}, #{college_id})")
	@Options(useGeneratedKeys=true, keyProperty="id", flushCache=true, keyColumn="id")
	public void insertStudent(Student student);
		
	@Select("SELECT USERNAME as userName, PASSWORD as password, "
			+ "FIRSTNAME as firstName, LASTNAME as lastName, "
			+ "DATEOFBIRTH as dateOfBirth, EMAILADDRESS as emailAddress,"
			+ "college_id as college_id "
			+ "FROM student WHERE userName = #{userName}")
	public Student getStudentByUserName(String userName);


}
