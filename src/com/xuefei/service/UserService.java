package com.xuefei.service;

import java.io.Serializable;
import java.util.List;

import com.xuefei.entity.User;

public interface UserService {
	void save(User s);
	void delete(Serializable id);
	void update(User s);
	List<User> getAll();
	Long getTotalCount();
	User findById(Serializable id);
}
