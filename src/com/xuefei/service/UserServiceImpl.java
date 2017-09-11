package com.xuefei.service;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xuefei.dao.UserDao;
import com.xuefei.entity.User;
@Service
public class UserServiceImpl implements UserService{
	@Resource
	private UserDao userDaoImpl;
	@Transactional
	@Override
	public void save(User s) {
		userDaoImpl.save(s);
	}
	@Transactional
	@Override
	public void delete(Serializable id) {
		userDaoImpl.delete(id);		
	}
	@Transactional
	@Override
	public void update(User s) {
		userDaoImpl.update(s);		
	}
	@Transactional
	@Override
	public List<User> getAll() {
		return userDaoImpl.getAll();
	}
	@Transactional
	@Override
	public Long getTotalCount() {
		return userDaoImpl.getTotalCount();
	}
	@Override
	public User findById(Serializable id) {
		return userDaoImpl.findById(id);
	}

}
