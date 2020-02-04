package com.qst.action.zwy;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import com.qst.action.BaseAction;
import com.qst.entity.TbResume;
import com.qst.entity.TbUser;
import com.qst.service.ResumeService;
import com.qst.util.JsonUtils;
import com.qst.vo.EducationExperience;
import com.qst.vo.ProjectExperience;
import com.qst.vo.WantedPosition;
import com.qst.vo.WordExperience;

import lombok.Getter;
import lombok.Setter;

@Controller
@Getter
@Setter
public class ResumeAction extends BaseAction {
	@Autowired
	private  ResumeService resumeService;
	private TbResume resume=new TbResume();
	private EducationExperience education = new EducationExperience();
	private ProjectExperience project = new ProjectExperience();
	private WantedPosition wanted = new WantedPosition();
	private WordExperience  word = new WordExperience();
	private String summary;
	private int id;

	public String show(){
		System.out.println("进入");
		return SUCCESS;
	}
	
	public String lookResume(){
		System.out.println("进入显示简历信息");
			TbUser cUser = (TbUser)currentUser;
			
		  TbResume resume2 = resumeService.findResumeByUserId(cUser.getId());
		  List<EducationExperience> eList= resume2.getEducationExperiences();
		  request.put("eList", eList);
		  List<ProjectExperience> pList=resume2.getProjectExperiences();
		  request.put("pList", pList);
		  List<WordExperience> workList=resume2.getWordExperiences();
		  request.put("workList", workList);
		  List<WantedPosition> wantList=resume2.getWantedPositions();
		  request.put("wantList", wantList);
		  request.put("summary", resume2.getSummary());
		  System.out.println("自我评价"+resume2.getSummary());
		return SUCCESS;
	}
	
	public String lookResumetouser(){
		System.out.println("进入显示简历信息");
		TbUser cUser = (TbUser)currentUser;
		  TbResume resume2 = resumeService.findResumeByUserId(cUser.getId());
		  List<EducationExperience> eList= resume2.getEducationExperiences();
		  request.put("eList", eList);
		  List<ProjectExperience> pList=resume2.getProjectExperiences();
		  request.put("pList", pList);
		  List<WordExperience> workList=resume2.getWordExperiences();
		  request.put("workList", workList);
		  List<WantedPosition> wantList=resume2.getWantedPositions();
		  request.put("wantList", wantList);
		  request.put("summary", resume2.getSummary());
		  System.out.println("自我评价"+resume2.getSummary());
		return SUCCESS;
	}
	
	public String addResume(){
		System.out.println("进入添加简历信息");
		TbUser cUser = (TbUser)currentUser;
		resume.setUId( cUser.getId());
		resumeService.addResume(resume);
		return SUCCESS;
	
	}
    public String deleteResumePro()
    {
    	TbUser cUser = (TbUser)currentUser;
		  TbResume resume2 = resumeService.findResumeByUserId(cUser.getId());
    	List<ProjectExperience> list = resume2.getProjectExperiences();
    	list.remove(id);
    	resume2.setProjectExperience(JsonUtils.objectToJson(list));
    	resumeService.updateResume(resume2);
    	return SUCCESS;
    }
    
    public String deleteResumeedu()
    {
    	TbUser cUser = (TbUser)currentUser;
		  TbResume resume2 = resumeService.findResumeByUserId(cUser.getId());
    	List<EducationExperience> list = resume2.getEducationExperiences();
    	list.remove(id);
    	resume2.setEducation(JsonUtils.objectToJson(list));
    	resumeService.updateResume(resume2);
    	return SUCCESS;
    }
    
    public String deleteResumework()
    {
    	TbUser cUser = (TbUser)currentUser;
		  TbResume resume2 = resumeService.findResumeByUserId(cUser.getId());
    	List<WordExperience> list = resume2.getWordExperiences();
    	list.remove(id);
    	resume2.setWorkExperience(JsonUtils.objectToJson(list));
    	resumeService.updateResume(resume2);
    	return SUCCESS;
    }
    public String deleteResumewant()
    {
    	TbUser cUser = (TbUser)currentUser;
		  TbResume resume2 = resumeService.findResumeByUserId(cUser.getId());
    	List<WantedPosition> list = resume2.getWantedPositions();
    	list.remove(id);
    	resume2.setForwordJob(JsonUtils.objectToJson(list));
    	resumeService.updateResume(resume2);
    	return SUCCESS;
    }
   
    
	public String education(){
		System.out.println("教育背景");
		//String educationjson = JsonUtils.objectToJson(education);
	   // System.out.println(educationjson+"======");
		TbUser cUser = (TbUser)currentUser;
		  TbResume resume2 = resumeService.findResumeByUserId(cUser.getId());
	    System.out.println(resume2.getEducation()+"=======");
	    List<EducationExperience> list = resume2.getEducationExperiences();
	    list.add(education);
	    System.out.println(list);
	    resume2.setEducation(JsonUtils.objectToJson(list));
		resumeService.updateResume(resume2);
		return SUCCESS;
	}
	public String wordexperiecnce(){
		System.out.println("工作经历");
		TbUser cUser = (TbUser)currentUser;
		  TbResume wordss = resumeService.findResumeByUserId(cUser.getId());
		System.out.println(wordss.getWorkExperience()+"000000");
		List<WordExperience> work=wordss.getWordExperiences();
		System.out.println(work+"数据库的值");
		System.out.println("页面的 值"+word);
		work.add(word);
		wordss.setWorkExperience(JsonUtils.objectToJson(work));;
		resumeService.updateResume(wordss);
		return SUCCESS;
	}
	public String project(){
		System.out.println("项目经历");
		TbUser cUser = (TbUser)currentUser;
		  TbResume projects = resumeService.findResumeByUserId(cUser.getId());
		System.out.println(projects.getProjectExperience()+"111111");
		List<ProjectExperience> pojo=projects.getProjectExperiences();
		System.out.println("页面的projo"+project);
		pojo.add(project);
		projects.setProjectExperience(JsonUtils.objectToJson(pojo));;
		resumeService.updateResume(projects);
		return SUCCESS;
	}
	public String wanted(){
		System.out.println("期望薪资");
		TbUser cUser = (TbUser)currentUser;
		  TbResume wanteds = resumeService.findResumeByUserId(cUser.getId());
		System.out.println(wanteds.getWantedPositions()+"--------------------");
		List<WantedPosition> want=wanteds.getWantedPositions();
		want.add(wanted);
		wanteds.setForwordJob(JsonUtils.objectToJson(want));
		resumeService.updateResume(wanteds);
		return SUCCESS;
	}
	public String resumesummary(){
		System.out.println("自我评价");
		TbUser cUser = (TbUser)currentUser;
		  TbResume resummary = resumeService.findResumeByUserId(cUser.getId());
		System.out.println(resummary.getSummary()+"自我评价");
		System.out.println(summary+"=======页面的自我评价");
		resummary.setSummary(summary);
		resumeService.updateResume(resummary);
		return SUCCESS;
	}

	public TbResume getResume() {
		return resume;
	}

	public void setResume(TbResume resume) {
		this.resume = resume;
	}

	public EducationExperience getEducation() {
		return education;
	}

	public void setEducation(EducationExperience education) {
		this.education = education;
	}

	public ProjectExperience getProject() {
		return project;
	}

	public void setProject(ProjectExperience project) {
		this.project = project;
	}

	public WantedPosition getWanted() {
		return wanted;
	}

	public void setWanted(WantedPosition wanted) {
		this.wanted = wanted;
	}

	public WordExperience getWord() {
		return word;
	}

	public void setWord(WordExperience word) {
		this.word = word;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	

}
