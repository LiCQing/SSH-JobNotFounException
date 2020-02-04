package com.qst.dao;

import java.awt.print.Paper;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

/**
 * Dao的基类，公共类，所有dao都可以继承这个
 * 
 * @author !N
 *
 */
public class BaseDao extends HibernateDaoSupport {

	@Resource
	public void setSF(SessionFactory sessionFactory) {
		this.setSessionFactory(sessionFactory);

	}

	/**
	 * 保存一个实体类
	 * 
	 * @param entity
	 * @return
	 */
	public boolean save(Object entity) {
		int result = (int)this.getHibernateTemplate().save(entity);
		return result > 0?true:false;
	}
	
	/**
	 * 更新实体数据
	 * @param entity
	 * @return
	 */
	public boolean update(Object entity){
		try{
			this.getHibernateTemplate().merge(entity);
			return true;
		}catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	/**
	 * 获取一个实体类
	 * 
	 * @param clazz
	 * @param id
	 * @return
	 */
	public Object get(Class clazz, int id) {
		return this.getHibernateTemplate().get(clazz, id);
	}

	 
	public boolean delete(Object entity){
		try{
			getHibernateTemplate().delete(entity);
			return true;
		}catch(Exception e){
			return false;
		}
		
	}
	

	/**
	 * 分页查找 带参数 字符串？占位
	 * 
	 * @param hql
	 *            查询语句
	 * @param page
	 *            开始页
	 * @param row
	 *            页大小
	 * @param param 键值对参数
	 * @return
	 */
	public List<?> getPageList(String hql, int page, int row, Object...param) {
		return (List<?>) getHibernateTemplate().execute(new HibernateCallback() {
			public Object doInHibernate(Session session) throws HibernateException {
				Query query = session.createQuery(hql);
				for (int i = 0 ; i < param.length; i++) {
					query.setParameter(i, param[i]);
				}
				query.setFirstResult((page - 1) * row);
				query.setMaxResults(row);
				List<Paper> list = query.list();
				return list;
			}
		});
	}

	/**
	 * 获取页总数 
	 * 
	 * @param hql
	 *            //格式如 from Paper where userId=?
	 * @param row
	 * @return
	 */
	public int getPageTotal(String hql,int pageSize, Object...param) {
		hql = "select count(*) " + hql;
		List<Object> objs = (List<Object>) getHibernateTemplate().find(hql,param);
		int records = Integer.parseInt(objs.get(0).toString());
		if (records % pageSize == 0) {

			return records / pageSize;
		} else {
			return records / pageSize + 1;
		}
	}
	
	/**
	 * 通过hql语句获取列表
	 * @param hql hql语句
	 * @return
	 */
	public List<?> findList(String hql){
		return getHibernateTemplate().find(hql);
	}
	
	/**
	 * 通过hql语句获取列表
	 * @param hql hql语句
	 * @param param 参数
	 * @return
	 */
	public List<?> findList(String hql,Object...param){
		return getHibernateTemplate().find(hql, param);
	}
	
	
}
