package com.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.entity.Teacher;
import com.repository.TeacherRepository;

public class TeacherService {
	@Autowired
	TeacherRepository teacherrepo;
	
	public Teacher addteacherdetails(Teacher t)
	{
		return teacherrepo.save(t);
	}

}
