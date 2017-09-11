package com.xuefei.action;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;

import com.xuefei.entity.User;
import com.xuefei.service.UserService;
import com.xuefei.utils.BaseAction;
@Controller
@Scope("prototype")
public class UserAction extends BaseAction {

	private static final long serialVersionUID = 1L;
	@Resource
	private UserService userServiceImpl;
	private User user;
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	
	public String save() {
		userServiceImpl.save(user);
		return "save"; 
	}
	
	public String delete(){
		userServiceImpl.delete(user.getId());
		return "delete";
	}
	
	public String update(){
		userServiceImpl.update(user);
		return "update";
	}
	
	public String getAll(){
		List<User> list = userServiceImpl.getAll();
		requestMap.put("list", list);
		return "getAll";
	}
	
	public String findById(){
		User u = userServiceImpl.findById(user.getId());
		requestMap.put("user", u);
		return "findById";
	}
}
