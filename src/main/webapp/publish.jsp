<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">

    <!-- External Css -->
    <link rel="stylesheet" href="assets/css/fontawesome-all.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css" />
    <link rel="stylesheet" href="assets/css/et-line.css" />
    <link rel="stylesheet" href="assets/css/bootstrap-select.min.css" />
    <link rel="stylesheet" href="assets/css/plyr.css" />
    <link rel="stylesheet" href="assets/css/flag.css" />
    <link rel="stylesheet" href="assets/css/slick.css" /> 
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="assets/css/jquery.nstSlider.min.css" />

    <!-- Custom Css -->
    <link rel="stylesheet" type="text/css" href="dashboard/css/dashboard.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">


    <!-- Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600%7CRoboto:300i,400,500" rel="stylesheet">

    <!-- Favicon -->
    <link rel="icon" href="images/favicon.png">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="images/icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="images/icon-114x114.png">

</head>
<body>
<div class="post-content-wrapper">
                <form action="addPosition" class="job-post-form" method="post">
                  <div class="basic-info-input">
                    <h4><i data-feather="plus-circle"></i>发布一个职位</h4>
                    
                    <div id="job-title" class="form-group row">
                      <label class="col-md-2 col-form-label">职位名称</label>
                      <div class="col-md-9">
                        <input type="text" name="position.name" class="form-control" placeholder="填写职位名称">
                      </div>
                    </div>
                    <div id="job-title" class="form-group row">
                      <label class="col-md-2 col-form-label">发布状态</label>
	                      <div class="col-md-9">
		                        <div class="row">
			                          <div class="col-md-3">
												<input type="radio" checked="checked" name="position.status" value="0"> <span>草稿</span>
											</div>
										<c:if test="${User.status==1 }">
											 <div class="col-md-3">
													<input type="radio" name="position.status" value="1"> <span>发布</span>
											</div>
										</c:if>
										<c:if test="${User.status==0 }">
											 <div class="col-md-3">
												 <span>公司未审核</span>
											</div>
										</c:if>
									 
			                          </div>
		                         </div>
	                 </div>
                          

                     
                    <div id="job-summery" class="row">
                      <label class="col-md-2 col-form-label">职位简述</label>
                      <div class="col-md-9">
                        <div class="row">
                          <div class="col-md-3">
                            <div class="form-group">
                              <select id="position1" class="form-control">
                                <option value="">选择职位类型</option>
                               
                              </select>
                              <i class="fa fa-caret-down"></i>
                            </div>
                          </div>
                          <div class="col-md-3">
                            <div class="form-group">
                              <select id="position2" name="position.type" class="form-control">
                                <option value="">请选择职位类型</option>
                              </select>
                              <i class="fa fa-caret-down"></i>
                            </div>
                          </div>
                          </div>
                           <div class="row"> 
                          <div class="col-md-3">
                            <div class="form-group">
                             <select id="location1" class="form-control">
                                <option value="">选择工作地</option>
                               
                              </select>
                                <i class="fa fa-caret-down"></i>
                            </div>
                          </div>
                          <div class="col-md-3">
                            <div class="form-group">
                             <select id="location2" name="position.address" class="form-control">
                                <option value="">请选择市区</option>
                              </select>
                                <i class="fa fa-caret-down"></i>
                            </div>
                          </div>
                           </div>
                           <div class="row"> 
                          <div class="col-md-3">
                            <div class="form-group">
                              <input type="type" name="position.salaryMin" class="form-control" placeholder="工资区间">
                            </div>
                          </div>
                           <div class="col-md-3">
                            <div class="form-group">
                              <input type="type" name="position.salaryMax" class="form-control" placeholder="工资区间">
                            </div>
                          </div>
                             </div>
                           <div class="row"> 
                          <div class="col-md-6">
                            <div class="form-group">
                              <select name="position.education" class="form-control">
                                <option>学历要求</option>
                                <option value="0">无要求</option>
                                <option value="1">高中</option>
                                <option value="2">专科</option>
                                <option value="3">本科</option>
                                <option value="4">硕士</option>
                                <option value="5">博士</option>
                              </select>
                              <i class="fa fa-caret-down"></i>
                            </div>
                          </div>
                          
                          
                        </div>
                      </div>
                    </div>
                    
                     <div id="post-location" class="form-group row">
                      <label class="col-md-2 col-form-label">入职福利</label>
                      <div class="col-md-2">
                        <input type="text" name="position.tag" class="form-control"  placeholder="升职空间大">
                      </div>
                      <div class="col-md-2">
                        <input type="text" name="position.tag" class="form-control"  placeholder="五险一金">
                      </div>
                       <div class="col-md-2">
                        <input type="text" name="position.tag" class="form-control"  placeholder="员工生日会">
                      </div>
                       <div class="col-md-2">
                        <input type="text" name="position.tag" class="form-control"  placeholder="一年13薪">
                      </div>
                       
                    </div>

                    <div id="post-location" class="form-group row">
                      <label class="col-md-2 col-form-label">职位描述</label>
                      <div class="col-md-9">
                     <!--   <input type="text" name="position.description" class="form-control" placeholder="描述一下这个职位吧"> --> 
                     	<textarea name="position.description" rows="10" cols="80"  placeholder="具体工作内容" ></textarea>
                      </div>
                    </div>
               
                    
                    <div class="form-group row">
                      <label class="col-md-3 col-form-label"></label>
                      <div class="col-md-9">
                        <button type="submit" class="button">提交</button>
                      </div>
                    </div>
                  </div>
                </form>
              </div>
              
</body>
	<script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/city.js"> </script>
    <script type="text/javascript" src="js/initCity.js"> </script>
      <script type="text/javascript" src="js/position.js"> </script>
    <script type="text/javascript" src="js/initPosition.js"> </script>
    <script type="text/javascript">
    
     $(function(){
    	//加载
 		initChoosePosition("#position1", "#position2");
    	initChooseLocation("#location1", "#location2");
     });
    </script>
</html>