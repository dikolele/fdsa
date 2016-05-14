package com.lele.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.lele.po.Person;

public interface PersonService {
	public void save(String name , int age);
	public List<Person> query();
	public List<Person> queryByAge(@Param("age") Integer age);
	public void deleteByAge(@Param("age") int age);
	public void update(Person person);
	public Person queryById(int id);
	public void delete(Person person);
	
}
