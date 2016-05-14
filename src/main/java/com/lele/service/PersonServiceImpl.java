package com.lele.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lele.po.Person;
import com.mapper.UserMapper;

@Service
public class PersonServiceImpl implements PersonService {
	@Autowired
	private UserMapper usermapper ; 
	@Override
	public void save(String name , int age) {
		Person person = new Person();
		person.setName(name);
		person.setAge(age);
		usermapper.add(person);
	}
	
		
	
	@Override
	public List<Person> query() {
		
		return usermapper.query();
	}


	@Override
	public List<Person> queryByAge(Integer age) {
		return usermapper.queryByAge(age);
	}



	@Override
	public void deleteByAge(int age) {
		
		usermapper.deleteByAge(age);
	}



	@Override
	public void update(Person person) {
		usermapper.update(person);
		
	}



	@Override
	public Person queryById(int id) {
		// TODO Auto-generated method stub
		return usermapper.queryById(id);
	}



	@Override
	public void delete(Person person) {
		usermapper.delete(person.getId());
		
	}
}
