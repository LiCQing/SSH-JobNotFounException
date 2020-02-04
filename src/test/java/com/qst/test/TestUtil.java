package com.qst.test;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;

import org.junit.Test;

import com.qst.util.FtpUtil;


public class TestUtil {
	
	@Test
	public void testFtpUtil() throws FileNotFoundException{
		InputStream input = new FileInputStream(new File("E:\\360下载\\omyzbewf.jpeg"));
		boolean uploadFileToServer = FtpUtil.uploadFileToServer("image/test/", "2.jpg", input);
		System.out.println(uploadFileToServer);
	}

}
