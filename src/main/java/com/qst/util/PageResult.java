package com.qst.util;

import java.util.List;



public class PageResult {
	private int totlePage;
	private int currentPage;
	private boolean hasPre;
	private boolean hasNext;
	private List<?> list;
	public int getTotlePage() {
		return totlePage;
	}
	public void setTotlePage(int totlePage) {
		this.totlePage = totlePage;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
		if(currentPage > 1)
			this.hasPre=true;
	}
	public boolean isHasPre() {
		return hasPre;
	}
	public void setHasPre(boolean hasPre) {
		this.hasPre = hasPre;
	}
	public boolean isHasNext() {
		return hasNext;
	}
	public void setHasNext(boolean hasNext) {
		this.hasNext = hasNext;
	}
	public List<?> getList() {
		return list;
	}
	public void setList(List<?> list) {
		this.list = list;
	}
	@Override
	public String toString() {
		return "PageResult [totlePage=" + totlePage + ", currentPage=" + currentPage + ", hasPre=" + hasPre
				+ ", hasNext=" + hasNext + ", list=" + getListStr() + "]";
	}
	
	public String getListStr(){
		String str = "";
		for (Object object : list) {
			str += object.toString() +"\n";
		}
		return str;
	}
	
	

}
