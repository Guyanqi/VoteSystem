﻿<html lang="en">
<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>修改密码</title>
  <!-- Bootstrap -->
  <link href="css/bootstrap.css" rel="stylesheet">
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!-- siimple style -->
  <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link href="css/templatemo_style.css" rel="stylesheet" type="text/css">
  <link href="css/vegas.min.css" rel="stylesheet">
  <link href="css/style.css" rel="stylesheet">
  <style type="text/css">
  body {
    background-color: #f6f6f6;
  }
  
  #logo-text,
  #login {
    color: #ffffff;
    font-size: 20px;
  }
  
  #logo {
    padding-top: 5px;
  }
  </style>
</head>

<body class="templatemo-bg-gray">
	<%  
  Object username = session.getAttribute("project_id");  
  if(null == username){  
        
      response.sendRedirect("login.jsp");  
  }  
%>
  <!-- Fixed navbar -->
  <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example-navbar-collapse">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" id="logo" href="index.jsp"><img src="images/logo.png" weight="48px" height="48px" /></a>
    </div>
  </nav>
  <br/>
  <br/>
  <br/>
  <div class="container">
    <div class="col-lg-12">
      <form class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" role="form" action="Changepassword" method="post">
        <div class="form-group">
          <div class="col-lg-12">
          <h1 class="margin-bottom-15">修改密码</h1>  
            <div class="control-wrapper">
              <label for="username" class="control-label fa-label"><i class="fa fa-user fa-medium"></i></label>
              <input type="text" class="form-control" id="username" placeholder="用户名" name="username">
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-lg-12">
            <div class="control-wrapper">
              <label for="password" class="control-label fa-label"><i class="fa fa-lock fa-medium"></i></label>
              <input type="password" class="form-control" id="password" placeholder="旧密码" name="password">
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-lg-12">
            <div class="control-wrapper">
              <label for="password" class="control-label fa-label"><i class="fa fa-lock fa-medium"></i></label>
              <input type="password" class="form-control" id="password" placeholder="新密码" name="newpassword">
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-lg-12">
            <div class="control-wrapper">
              <label for="password" class="control-label fa-label"><i class="fa fa-lock fa-medium"></i></label>
              <input type="password" class="form-control" id="password" placeholder="再输入一遍新密码" name="newpasswordcheck">
            </div>
          </div>
        </div>
        <div class="form-group">
          <div class="col-lg-10">
            <div class="control-wrapper col-md-offset-1">
              <s:fielderror/>
            </div>
          </div>
        </div>
        <hr/>
        <div class="form-group">
          <div class="col-lg-8">
            <div class="control-wrapper col-md-offset-5">
              <input type="submit" value="提交" class="btn btn-info btn-block">
            </div>
          </div>
        </div>
        
      </form>
    </div>
  </div>
  
  <script src="js/jquery-1.11.1.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script type="text/javascript" src="js/mock.js"></script>
  <script src="js/index.js"></script>
</body>

</html>
