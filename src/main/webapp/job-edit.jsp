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
                <form action="updatePosition" class="job-post-form" method="post">
                  <div class="basic-info-input">
                    <h4><i data-feather="plus-circle"></i>发布一个职位</h4>
                    <div id="job-title" class="form-group row">
                      <label class="col-md-3 col-form-label">职位名称</label>
                      <div class="col-md-9">
                        <input type="text" name="position.name" value="${position.name }" class="form-control" placeholder="填写职位名称">
                      </div>
                    </div>
                    <div id="job-summery" class="row">
                      <label class="col-md-3 col-form-label">职位简述</label>
                      <div class="col-md-9">
                        <div class="row">
                          <div class="col-md-6">
                            <div class="form-group">
                              <select name="position.type" value="${position.type }" class="form-control">
                                <option value="">选择类别</option>
                                <option value="150411">管理岗位</option>
                                <option value="150499">专技岗位</option>
                                <option value="150400">工勤岗位</option>

                              </select>
                              <i class="fa fa-caret-down"></i>
                            </div>
                          </div>
                          <div class="col-md-6">
                            <div class="form-group">
                              <input type="text" name="position.address" class="form-control" placeholder="工作地点">
                            </div>
                          </div>
                        
                         
                          <div class="col-md-6">
                            <div class="form-group">
                              <input type="type" name="position.salaryMin" value="${position.salaryMin}" class="form-control" placeholder="最低工资">
                            </div>
                          </div>
                           <div class="col-md-6">
                            <div class="form-group">
                              <input type="type" name="position.salaryMax" value="${position.salaryMax }" class="form-control" placeholder="最高工资">
                            </div>
                          </div>
                          <div class="col-md-6">
                            <div class="form-group">
                              <select name="position.education" value="${position.education }" class="form-control">
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
                      <label class="col-md-3 col-form-label">职位描述</label>
                      <div class="col-md-9">
                        <input type="text" name="position.description" value="${position.description }" class="form-control" placeholder="描述一下这个职位吧">
                      </div>
                    </div>
               
                    <input type="hidden" name="position.id" value="${position.id }"/>
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
</html>