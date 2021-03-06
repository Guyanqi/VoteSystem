﻿<!DOCTYPE html>
<html lang="en">
<%@ page language="java"  import="java.util.*, db.fun.*,db.pojo.*" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
    <meta charset="utf-8">
    <script src="js/Chart.js"> </script>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>大创展投票系统</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/bootstrap-theme.css" rel="stylesheet">
    <!-- siimple style -->
    <link href="css/style.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
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
    <style type="text/css">
  body{
    background:url("images/7.png" );
    background-size:600px 500px;
    background-position:720px 200px;
    background-repeat:no-repeat;
  }
  </style>
</head>

<body  >
    <!-- Fixed navbar -->
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <!--           <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button> -->
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
    <div id="header">
        <div class="container">
            <div class="row">
            	<div class="col-lg-12">
            <h1 class="margin-bottom-15">创展风云榜</h1>
            <h4>票数</h4>
            </div>
	<%
	List l=new FunProjectInfo().showProjectVote(0,10);
	Long[] name=new Long[10];	
	int[] votenum=new int[10];	
	ProjectInfo[] p = new ProjectInfo[10];
	for(int i=0; i<10; i++)
	{
	p[i] = (ProjectInfo)l.get(i);
	name[i]=p[i].getProjectID();
	votenum[i]=p[i].getVoteNum();
	//out.print(name[i]);
	//out.print(votenum[i]);
	}	
	%>
	<canvas id="myChart"  width="800" height="450"></canvas>
	<script  type="text/javascript">
	window.onload = function ()
  {
	var ctx = document.getElementById("myChart").getContext("2d");
	var data = {
	labels : ["<%=name[0]%>","<%=name[1]%>","<%=name[2]%>","<%=name[3]%>","<%=name[4]%>","<%=name[5]%>","<%=name[6]%>","<%=name[7]%>","<%=name[8]%>","<%=name[9]%>"],
	datasets : [
		{
			fillColor : "rgba(020,100,160,40)",
			strokeColor : "rgba(255,255,255,1)",
			pointColor : "#3dc448",
              pointStrokeColor : "#fff",
			data : [<%=votenum[0] %>,<%=votenum[1] %>,<%=votenum[2] %>,<%=votenum[3] %>,<%=votenum[4] %>,<%=votenum[5] %>,<%=votenum[6] %>,<%=votenum[7] %>,<%=votenum[8] %>,<%=votenum[9] %>]
		}
     	]
	}
	var defaults = 
	{
		scaleGridLineWidth : 0,	
		scaleLineColor : "rgba(255,255,255,0)",
		scaleShowGridLines : false,
		datasetFill : true,
		
        animation : false,
	}
	new Chart(ctx).Bar(data,defaults);                                             
	}
</script>
项目编号
            </div>
        </div>
    </div>
  
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="js/Chart.js"> </script>
</body>

</html>
