package com.qst.service.li;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qst.dao.TbResumeDao;
import com.qst.entity.TbResume;
import com.qst.util.ExportFileUtil;

@Service
public class ExportService {
	
	@Autowired
	private TbResumeDao rDao;

	public InputStream getResumeFileInput(TbResume resume) {
		// 临时输出流
		ByteArrayOutputStream baos = new ByteArrayOutputStream();
		try {
			ExportFileUtil.toPdf(resume, baos);
			baos.flush();
			byte[] aa = baos.toByteArray();
			// 由输出流转成输入流
			return new ByteArrayInputStream(aa, 0, aa.length);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			try {
				baos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	   return null;
	}

}
