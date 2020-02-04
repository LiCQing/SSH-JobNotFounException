package com.qst.util;

import java.sql.Timestamp;
import java.text.ParsePosition;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
	
	/**
	 * 时间戳转字符串
	 * @param stamp
	 * @return
	 */
	public static String timestampToStringDate(Timestamp stamp){
		String timeStamp = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(stamp);
		return timeStamp;
	}
	
	/**
	 * 字符串转时间戳
	 * @param strDate
	 * @return
	 */
	public static Timestamp getTimestamp(String strDate){
		SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		ParsePosition pos = new ParsePosition(0);
		Date strtodate = formatter.parse(strDate, pos);
		return new Timestamp(strtodate.getTime());
	}
	
	/**
	 * 获取现在的时间串
	 * @return
	 */
	
	public static String getTimeStr(){
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
		
	}
	
	/**
	 * 获取现在的时间戳
	 * @return
	 */
	
	public static Timestamp getTimestamp(){
		Long time = new Date().getTime();
		return new Timestamp(time);
	}
}
