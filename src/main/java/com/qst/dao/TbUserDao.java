package com.qst.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qst.entity.TbUser;
/**
 * 用户数据库访问持久类
 * @author !N
 *
 */
@Repository
public class TbUserDao extends BaseDao{
	/**
	 * 检查手机号是否注册过
	 * @param name
	 * @return fase表示不存在，true表示已经存在
	 */
	public boolean checkName(String phone){
		List<TbUserDao> user = (List<TbUserDao>) getHibernateTemplate().find("from TbUser where phone=?", phone);
		return  user.size() > 0 ?true:false;
		
	}
	
	/**
	 * 添加用户
	 * @return
	 */
	public int addUser(TbUser user){
		return (int) getHibernateTemplate().save(user);
	}
	
	/**
	 * 通过id获取用户
	 * @param id
	 * @return
	 */
	public TbUser getUserById(int id){
		return (TbUser)get(TbUser.class,id);
	}
	
	/**
	 * 更新用户信息
	 * @param user
	 * @return
	 */
	public boolean updateUser(TbUser user){
		
		return update(user);
	}
	
	/**
	 * 获取所有用户的一页
	 * @param page
	 * @param row
	 * @return
	 */
	public List<TbUser> getPageUser(int page,int row){
		return (List<TbUser>)getPageList("from TbUser", page, row);
	}
	
	/**
	 * 获取所有用户的总页数
	 * @return
	 */
	public int getTotalPage(int row){
		return getPageTotal("from TbUser", row);
	}
	/**
	 * 根据手机和密码获取用户
	 * @param phone
	 * @param pwd
	 * @return
	 */
	
    public Object getByPW(String phone,String pwd,int tag){
    	String hql;
    	if(tag==1)
    	{
    		 hql = "from TbUser where phone=? and pwd=?";
    	}
    	else{
    		 hql = "from TbCompany where account=? and pwd=?";
    	}
    	
		List<Object> findList = (List<Object>) findList(hql, phone,pwd);
    	return findList.size()>0?findList.get(0):null;
    }
    public Object getByP(String phone,int tag){
	   String hql;
	   if(tag==1)
     	{
   		 hql = "from TbUser where phone=?";
     	}
    	else{
   		 hql = "from TbCompany where account=?";
     	}
	   List<Object> findList = (List<Object>) findList(hql, phone);
   	return findList.size()>0?findList.get(0):null;
    }


	/**
     * 根据手机获取用户
     * @param phone
     * @return
     */
    public TbUser getByP(String phone){
    	String hql = "fron TbUser where phone=?";
    	TbUser tbUser = (TbUser) getHibernateTemplate().find(hql, phone);
    	return tbUser;
    }
}
