package com.qst.tomcat;

import java.util.Enumeration;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import org.apache.catalina.core.ApplicationContext;

public class StartTomcatListner implements ServletContextListener{

	@Override
	public void contextDestroyed(ServletContextEvent arg0) {
			
	}

	@Override
	public void contextInitialized(ServletContextEvent event) {
		// TODO Auto-generated method stub
		System.out.println("服务器启动");
		   Enumeration<String> names = event.getServletContext().getInitParameterNames();
	        while (names.hasMoreElements())
	        {
	            String name = names.nextElement();
	            String value = event.getServletContext().getInitParameter(name);
	            if(name.equals("imageServer")){
	            	System.out.println(value);
	            	event.getServletContext().setAttribute("imageServer", value);
	            }
	        }
		
	}
	
	

}
