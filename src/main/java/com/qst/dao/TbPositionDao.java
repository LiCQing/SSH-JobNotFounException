package com.qst.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.qst.entity.TbPosition;

@Repository
public class TbPositionDao extends BaseDao {
 
	/**
	 * 添加职位
	 * @param position
	 * @return
	 */

	public boolean addPosition(TbPosition position){
		save(position);
		return true;
		
	}
	
	/**
	 * 获取一页所有公开已经发布职位，
	 * @param page
	 * @param row
	 */
	public List<TbPosition> getPagePosition(int page, int row) {
		return (List<TbPosition>) getPageList("from TbPosition where status = 1", page, row);
		
	}
 
	/**
	 * 查找公司所有职位
	 * @param companyid
	 * @return
	 */
	public List<TbPosition> findCompanyById(int companyid){
		List<TbPosition> position=(List<TbPosition>)findList("from TbPosition where CId=?",companyid);
		return position;
		
	}
	/**
	 * 分页显示
	 * @param page
	 * @param pagesize
	 * @return
	 */
	public List<TbPosition> companypagelist(int companyid,int page,int pagesize){
		
		return (List<TbPosition>) getPageList("from TbPosition where CId=?  order by createTime desc",page,pagesize,companyid);
	}
	//职位搜索分页显示
	public List<TbPosition> searchPositionList(String name,int address,int type,int page,int pagesize){
		return (List<TbPosition>) getPageList("from TbPosition where status = 1 and name like ? and address = ? and type = ?", page, pagesize, "%" + name + "%",address,type);
	
	}
	/**
	 * 获取总页数
	 * @param pagesize
	 * @return
	 */
	public int totalposition(int pagesize,int companyid){
		return getPageTotal(" from  TbPosition where CId=?",pagesize,companyid);
	}
	//获取职位搜索总页数
	public int searchTotalPosition(int pagesize,String name,int address,int type){
		return getPageTotal("from TbPosition where status = 1 and name like ? and address = ? and type = ?", pagesize, "%" + name + "%",address,type);
	}
	
	/*//公司职位搜索分页显示
		public List<TbPosition> searchPositionListCompany(String name,int page,int pagesize){
			return (List<TbPosition>) getPageList("from TbPosition where status = 0 and name like ? and address = ? and type = ?", page, pagesize, "%" + name + "%");
		
		}
		//公司职位搜索总页数
		public int searchTotalPositionCompany(int pagesize,String name){
			return getPageTotal("from TbPosition where status = 0 and name like ? and address = ? and type = ?", pagesize, "%" + name + "%");
		}*/
	/**
	 * 删除公司的职位
	 * @param companyid
	 * @return
	 */
	public boolean deletePosition(int positionId){
		TbPosition position=(TbPosition)get(TbPosition.class,positionId);
		position.setStatus(-1);
		getHibernateTemplate().update(position);
		return true;
	}
 
	/**
	 * 获取一页所有公开已经发布职位的页数
	 * @param row
	 * @return
	 */
	public int getAllTotalPage(int row) {
		return getPageTotal("from TbPosition where status = 1 " , row);
	}
	
	public TbPosition getPositionById(int positionId) {
		return (TbPosition)get(TbPosition.class, positionId);
	}

	
//统一查询  判断搜索名称是公司还是工作
	 public boolean search(String name){
		 List<?> list =findList("from TbPosition where status = 1 and  name like ?", "%"+name+"%");
		 if(list!=null){
			 return true;
		 }
		 return  false;
	 }


 
	public boolean updatePosition(TbPosition position) {

		return update(position);
	
	}
	
	
	/**
	 * 查找最新的前5条职位数据
	 * @return
	 */
	
	public List<TbPosition> hotjobList(){
		String hql = "from TbPosition where status = 1 order by id desc ";
	    List<TbPosition> list = (List<TbPosition>)findList(hql);
	   return list.subList(0, 5);
		
	}

	//模糊查询
	public int searchTotalPositionName(int pagesize, String name) {
		return getPageTotal("from TbPosition where status = 1 and name like ?", pagesize, "%" + name + "%");
	}

	public List<?> searchPositionListName(String name, int page, int pagesize) {
		return (List<TbPosition>) getPageList("from TbPosition where status = 1 and name like ?", page, pagesize, "%" + name + "%");
	}
	//类别查询
	public int searchTotalPositionType(int pagesize, int type) {
		return getPageTotal("from TbPosition where status = 1 and type = ?", pagesize,type);
	}

	public List<?> searchPositionListType(int type, int page, int pagesize) {
		return (List<TbPosition>) getPageList("from TbPosition where status = 1 and type = ?", page, pagesize,type);
	}
	//地点查询
	public int searchTotalPositionAddress(int pagesize, int address) {
		return getPageTotal("from TbPosition where status = 1 and address = ?", pagesize,address);
	}

	public List<?> searchPositionListAddress(int address, int page, int pagesize) {
		return (List<TbPosition>) getPageList("from TbPosition where status = 1 and address = ?", page, pagesize,address);
	}
	//地点+模糊
	public int searchTotalPositionAN(int pagesize, int address,String name) {
		return getPageTotal("from TbPosition where status = 1 and address = ? and name = ?", pagesize,address,name);
	}

	public List<?> searchPositionListAN(int address, int page, int pagesize,String name) {
		return (List<TbPosition>) getPageList("from TbPosition where status = 1 and address = ? and name = ?", page, pagesize,address,name);
	}
	//地点+类别
	public int searchTotalPositionAT(int pagesize, int address,int type) {
		return getPageTotal("from TbPosition where status = 1 and address = ? and type = ?", pagesize,address,type);
	}

	public List<?> searchPositionListAT(int address,int type, int page, int pagesize) {
		return (List<TbPosition>) getPageList("from TbPosition where status = 1 and address = ? and type = ?", page, pagesize,address,type);
	}
	//类别+模糊
	public int searchTotalPositionTN(int pagesize, String name,int type) {
		return getPageTotal("from TbPosition where status = 1 and name = ? and type = ?", pagesize,name,type);
	}
	public List<?> searchPositionListTN(String name,int type, int page, int pagesize) {
		return (List<TbPosition>) getPageList("from TbPosition where status = 1 and name = ? and type = ?", page, pagesize,name,type);
	}
}
