package com.qst.util;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.List;

import com.itextpdf.text.BadElementException;
import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Chunk;
import com.itextpdf.text.Document;
import com.itextpdf.text.DocumentException;
import com.itextpdf.text.Element;
import com.itextpdf.text.Font;
import com.itextpdf.text.Image;
import com.itextpdf.text.PageSize;
import com.itextpdf.text.Paragraph;
import com.itextpdf.text.pdf.BaseFont;
import com.itextpdf.text.pdf.PdfWriter;
import com.itextpdf.text.pdf.codec.Base64.OutputStream;
import com.itextpdf.text.pdf.draw.LineSeparator;
import com.itextpdf.tool.xml.XMLWorkerHelper;
import com.qst.entity.TbResume;
import com.qst.entity.TbUser;
import com.qst.vo.EducationExperience;
import com.qst.vo.ProjectExperience;
import com.qst.vo.WordExperience;

public class ExportFileUtil {

	public static final String HTML = "C:/Users/!N/workspace/QST/F4_JobNotFoundException/src/main/webapp/resume-example.html";
	public static final String DEST = "E:/a-resume/";
	private static BaseFont baseFont;

	/**
	 * Creates a PDF with the words "Hello World"
	 * 
	 * @param file
	 * @throws IOException
	 * @throws DocumentException
	 */
	public void createPdf(File file) throws IOException, DocumentException {
		// step 1
		Document document = new Document();
		// step 2
		PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(file));
		// step 3
		document.open();
		// step 4
		XMLWorkerHelper.getInstance().parseXHtml(writer, document, new FileInputStream(HTML), Charset.forName("UTF-8"));
		// step 5
		document.close();
	}

	public void createPdf2(String file) throws IOException, DocumentException {
		// step 1 新建实例 默认A4大小纸张
		Document document = new Document();
		// step 2 指定实例 和 输出流
		PdfWriter writer = PdfWriter.getInstance(document, new FileOutputStream(file));
		// 写入注释
		// 作者
		document.addAuthor("F4");
		// 创建日期
		document.addCreationDate();
		// 创建关键字
		document.addKeywords("简历");
		// 创建生产商，自动使用iText
		document.addProducer();
		// 创建程序
		document.addCreator("www.f4_job_notfound_exception.com");

		// 3 .打开文档
		document.open();
		// ------4. 添加内容
		// -设置字体 //C:\Windows\Fonts\msyh.ttc

		BaseFont baseFont = BaseFont.createFont("C:/Windows/Fonts/msyh.ttc,0", BaseFont.IDENTITY_H,
				BaseFont.NOT_EMBEDDED);

		/*
		 * BaseFont baseFont = BaseFont.createFont("C:/Windows/Fonts/msyh.ttc",
		 * BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
		 */
		Font font = new Font(baseFont);
		// 设置字体大小
		// font.setSize(13);
		// 设置字体颜色
		// font.setColor(new BaseColor(255, 0, 0));
		// 设置类型，为正常
		font.setStyle(Font.NORMAL);
		/*
		 * // 设置类型，加粗 font.setStyle(Font.BOLD); // 设置类型，倾斜
		 * font.setStyle(Font.ITALIC); // 设置类型，下划线
		 * font.setStyle(Font.UNDERLINE); // 设置类型，可组合，倾斜+删除线
		 * font.setStyle(Font.ITALIC | Font.STRIKETHRU);
		 */
		// 添加内容
		// 段落
		// Paragraph paragraph = new Paragraph(content, font);
		// 块
		Chunk chunk = new Chunk("语句块");
		// 设置字体，字体定宽
		chunk.setFont(font);
		// 设置背景颜色
		// chunk.setBackground(new BaseColor(0xFF, 0xFF, 0x00));
		// 使用块来构造段落
		Paragraph paragraph = new Paragraph(chunk);
		// 居中
		paragraph.setAlignment(Element.ALIGN_CENTER);
		// 使用Chunk换行
		document.add(Chunk.NEWLINE);
		// 加入内容
		document.add(paragraph);
		// 关闭文档
		document.close();

	}

	private static void initFont() throws DocumentException, IOException {
		baseFont = BaseFont.createFont("C:/Windows/Fonts/msyh.ttc,0", BaseFont.IDENTITY_H, BaseFont.NOT_EMBEDDED);
	}

	private static Chunk getBigChunk(String content) throws DocumentException, IOException {
		Font font = new Font(baseFont);
		Chunk chunk = new Chunk(content);
		font.setSize(18);
		chunk.setFont(font);
		return chunk;
	}

	private static Chunk getMiddleChunk(String content) throws DocumentException, IOException {
		Font font = new Font(baseFont);
		Chunk chunk = new Chunk(content);
		font.setSize(12);
		chunk.setFont(font);
		return chunk;
	}

	private static Chunk getLitterChunk(String content) throws DocumentException, IOException {
		Font font = new Font(baseFont);
		Chunk chunk = new Chunk(content);
		font.setSize(10);
		chunk.setFont(font);
		return chunk;
	}

	private static Chunk getMiddleChunkWithBig(String content) throws DocumentException, IOException {
		Font font = new Font(baseFont);
		font.setStyle(Font.BOLD);
		Chunk chunk = new Chunk(content);
		font.setSize(12);
		chunk.setFont(font);
		return chunk;
	}

	private static Chunk getChunk(String content, int size) {
		Font font = new Font(baseFont);
		Chunk chunk = new Chunk(content);
		font.setSize(size);
		chunk.setFont(font);
		return chunk;
	}

	private static Paragraph getCenterParagraph(Chunk chunk, int before, int after) {
		Paragraph paragraph = new Paragraph(chunk);
		paragraph.setAlignment(Element.ALIGN_CENTER);
		paragraph.setSpacingAfter(after);
		paragraph.setSpacingBefore(before);
		return paragraph;
	}

	private static Element getLeftParagraph(Chunk chunk, int before, int after) {
		Paragraph paragraph = new Paragraph(chunk);
		paragraph.setAlignment(Element.ALIGN_LEFT);
		paragraph.setSpacingAfter(after);
		paragraph.setSpacingBefore(before);
		return paragraph;
	}

	 
	public static void toPdf(TbResume resume, ByteArrayOutputStream baos) throws Exception {
		// File file = new File(url);
		TbUser user = resume.getTbUser();
		// 默认36磅，较宽
		Document document = new Document(PageSize.A4, 20, 20, 20, 20);
		PdfWriter writer = PdfWriter.getInstance(document, baos);
		document.open();
		initFont();
		// 添加头像
		String imagePath = "E:/360下载/1.jpg"; // 图片的绝对路径
		Image image = null; // 声明图片对象
		try {
			image = Image.getInstance(imagePath); // 取得图片对象
		} catch (BadElementException | IOException e) {
			e.printStackTrace();
			System.out.println("获取图片失败");
			return;
		}

		image.scaleAbsolute(100, 100);
		image.setAbsolutePosition(PageSize.A4.getWidth() - 120, PageSize.A4.getHeight() - 120); // （以左下角为原点）设置图片的坐标

		try {
			document.add(image);
		} catch (DocumentException e) {
			e.printStackTrace();
		}

		// 添加用户姓名
		document.add(getCenterParagraph(getBigChunk(user.getName()), 2, 5));

		String baseInfo = "电话:" + user.getPhone() + " | 邮箱:" + user.getEmail() + " | 地址:" + user.getAddress();
		document.add(getCenterParagraph(getLitterChunk(baseInfo), 2, 5));
		document.add(Chunk.NEWLINE);
		System.out.println("添加基本信息完毕");
		// 添加教育背景
		document.add(getLeftParagraph(getMiddleChunkWithBig("教育经历"), 2, 5));
		LineSeparator line = new LineSeparator(0.5f, 100, BaseColor.BLACK, Element.ALIGN_CENTER, -8f);
		document.add(line);

		List<EducationExperience> list = resume.getEducationExperiences();
		System.out.println("教育经历有 :  " + list.size());
		if (list == null || list.size() == 0) {
			document.add(getLeftParagraph(getChunk("未填写", 11), 5, 1));
		} else {
			for (EducationExperience ex : list) {
				String str = ex.getSchoolName() + "( " + ex.getStartTime() + " 至  " + ex.getEndTime() + " )";
				System.out.println(str);
				document.add(getLeftParagraph(getChunk(str, 11), 5, 1));
				str = getEducation(ex.getLevel()) + " · " + ex.getSpecialty();
				System.out.println(str);
				document.add(getLeftParagraph(getLitterChunk(str), 1, 1));
				document.add(getLeftParagraph(getLitterChunk(ex.getSchoolExperien()), 1, 1));
			}

		}

		String ex;
		// 工作经验
		List<WordExperience> weList = resume.getWordExperiences();
		document.add(getLeftParagraph(getMiddleChunkWithBig("工作经验"), 10, 5));
		line = new LineSeparator(0.5f, 100, BaseColor.BLACK, Element.ALIGN_CENTER, -8f);
		document.add(line);
		if (weList == null || weList.size() == 0) {
			document.add(getLeftParagraph(getChunk("未填写", 11), 5, 1));
		} else {
			for (WordExperience we : weList) {
				String str = we.getCompanyName() + "( " + we.getStartWorkTime() + " 至  " + we.getEndWordTime()+ " )";
				document.add(getLeftParagraph(getChunk(str, 11), 5, 1));
				str = we.getDept() + " · " + we.getPositionType(); 
				document.add(getLeftParagraph(getLitterChunk(str), 1, 1));
				document.add(getLeftParagraph(getLitterChunk(we.getWorkContent()), 1, 1));
			}
		}
		

		// 项目经验
		List<ProjectExperience> peList = resume.getProjectExperiences();
		document.add(getLeftParagraph(getMiddleChunkWithBig("项目经验"), 10, 5));
		line = new LineSeparator(0.5f, 100, BaseColor.BLACK, Element.ALIGN_CENTER, -8f);
		document.add(line);
		if (peList == null || peList.size() == 0) {
			document.add(getLeftParagraph(getChunk("未填写", 11), 5, 1));
		} else {
			for (ProjectExperience pe : peList) {
				String str =  pe.getProjectName() + " ( " +pe.getStartTime() + " 至 " +pe.getEndTime()+ " ) " ;
				document.add(getLeftParagraph(getChunk(str, 11), 5, 1));
				document.add(getLeftParagraph(getLitterChunk(pe.getRole()), 1, 1));
				document.add(getLeftParagraph(getLitterChunk(pe.getResult()), 1, 1));
			}
		}
		 

		// 自我评价
		document.add(getLeftParagraph(getMiddleChunkWithBig("技能特长"), 10, 5));
		line = new LineSeparator(0.5f, 100, BaseColor.BLACK, Element.ALIGN_CENTER, -8f);
		document.add(line);
		document.add(getLeftParagraph(getLitterChunk(resume.getSkill()), 5, 1));

		// 技能特长
		document.add(getLeftParagraph(getMiddleChunkWithBig("自我评价"), 10, 5));
		line = new LineSeparator(0.5f, 100, BaseColor.BLACK, Element.ALIGN_CENTER, -8f);
		document.add(line);
		document.add(getLeftParagraph(getLitterChunk(resume.getSummary()), 5, 1));

		document.close();
	}

	private static String getEducation(int level) {
		switch (level) {
		case 0:
			return "高中以下";
		case 1:
			return "带专";
		case 2:
			return "本科";

		default:
			break;
		}
		return null;
	}

	public void createPdfByUser(TbUser user, File file) throws DocumentException, IOException {

	}
}