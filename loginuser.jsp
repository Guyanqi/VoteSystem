﻿<html lang="en">
<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>管理员登陆</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!-- siimple style -->
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css">
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
    <!-- Fixed navbar -->
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" id="logo" href="index.jsp"><img src="images/logo.png" weight="48px" height="48px" /></a>
                <p class="navbar-text" id="logo-text">InnovationCamp</p>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="loginAdmin.jsp" id="login">login in</a></li>
                </ul>
            </div>
        </div>
    </div>
    <br/>
    <br/>
    <br/>
      <% if(session.getAttribute( "username") == null ){ %>
    <div class="col-lg-4 col-lg-offset-4">
    	<h1>管理员未登录</h1>
    	<a href="loginAdmin.jsp">重新登录</a>
      <% }  else{%>
     
    </div>
    <div class="container">
        <div class="col-lg-12">
            <h1 class="margin-bottom-15">大创展投票系统(选票删除)</h1>
            <form class="form-horizontal templatemo-container templatemo-login-form-1 margin-bottom-30" role="form" action="loginUser" method="post">
                <div class="form-group">
                    <div class="col-lg-12">
                        <div class="control-wrapper">
                            <label for="UserNo" class="control-label fa-label"><i class="fa fa-user fa-medium"></i></label>
                            <input type="text" class="form-control" id="UserNo" placeholder="用户名" name="UserNo">
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
                <div class="form-group">
                    <div class="col-lg-8">
                        <div class="control-wrapper col-md-offset-5">
                            <input type="submit" value="登录" class="btn btn-info btn-block">
                        </div>
                    </div>
                </div>
                <hr/>
            </form>
            </div>

        </div>
    </div>
        <% }  %>
</body>

</html>
