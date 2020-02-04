package com.qst.dao;

 
import java.util.List;

import org.springframework.stereotype.Repository;

import com.qst.entity.TbCompany;

@Repository
public class TbCompanyDao extends BaseDao{
	public boolean addCompany(TbCompany company){
		return save(company);
	}
	public boolean updateCompany(TbCompany company){
		 return update(company);
	}

	
	/**
	 * 查询公司前6个
	 * @return
	 */
	public List<TbCompany> hotComList(){
		String hql = "from TbCompany order by id desc";
	    List<TbCompany> list = (List<TbCompany>)findList(hql);
	    return list.subList(0, 6);
	}
    /**
     * 根据id查询公司
     * @param id
     * @return
     */

	public TbCompany showCompanyById(int id){
		return (TbCompany) findList("from TbCompany where id = ?", id).get(0);
	}

	public TbCompany getCompanyById(int id) {
		return (TbCompany)get(TbCompany.class, id);
	}

}
