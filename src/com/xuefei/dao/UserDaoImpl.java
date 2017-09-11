package com.xuefei.dao;

import java.io.Serializable;
import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import com.xuefei.entity.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	@Override
	public void save(User s) {
		getHibernateTemplate().save(s);
	}

	@Override
	public void delete(Serializable id) {
		getHibernateTemplate().bulkUpdate("delete from User where id=" + id);
	}

	@Override
	public void update(User s) {
		getHibernateTemplate().update(s);
	}

	@Override
	public List<User> getAll() {
		return getHibernateTemplate().loadAll(User.class);
	}

	@Override
	public Long getTotalCount() {
		return getHibernateTemplate().execute(new HibernateCallback<Long>() {
			@Override
			public Long doInHibernate(Session session) throws HibernateException, SQLException {
				return (Long) session.createQuery("select count(*) from User").uniqueResult();
			}
		});
	}

	@Override
	public User findById(Serializable id) {
		return getHibernateTemplate().get(User.class, id);
	}

}
