package service;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.User;
import repository.UserRepository;


public class MaterialServiceImpl implements MaterialService{
	/**
	 * User Repository Object Variable to access User table
	 * 
	 */
	@Autowired
	UserRepository userRepository;
	
	@Autowired
	MaterialService Service;
	
	@Override
	public void create(User user)
	{
		userRepository.save(user);
	}

}
