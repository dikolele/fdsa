package com.mapper;

import java.util.List;

import javax.websocket.server.PathParam;

import org.apache.ibatis.annotations.Param;
import org.junit.runners.Parameterized.Parameters;
import org.springframework.stereotype.Component;

import com.lele.po.Person;
@Component
public interface UserMapper {
	public void add(@Param("person") Person person);

	public List<Person> query();

	public List<Person> queryByAge(int age);

	public void deleteByAge(@Param("age") int age);

	public void update(@Param("person") Person person);

	public Person queryById(int id);

	public void delete(int id);
	
	
	
}
