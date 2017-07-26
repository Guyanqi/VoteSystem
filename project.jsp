<%@ page language="java" import="java.util.*, db.fun.*,db.pojo.*" pageEncoding="UTF-8" %>
    <%@ taglib prefix="s" uri="/struts-tags" %>
        <html lang="en">

        <head>
            <% String path=request.getContextPath(); String basePath=request.getScheme()+ "://"+request.getServerName()+ ":"+request.getServerPort()+path+ "/"; %>
                <meta charset="utf-8">
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
                <link href="css/templatemo_style.css" rel="stylesheet" type="text/css">
                <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
                <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
                <style type="text/css">
                * {
                    font-family: "Microsoft YaHei"
                }
                
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

        <body>
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
            <div id="header">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-8">
                            <div class="panel panel-primary">
                                <div class="panel-heading">
                                    <s:property value="#request.project.projectID"/>号：<s:property value="#request.project.projectName" /><span class="label"><s:property value="#project.voteNum"/></span>
                                </div>
                                <div class="panel-body">
                                    <div class="col-lg-4">
                                        <img class="img-rounded" src="images/user_face.jpg" />
                                    </div>
                                    <div class="col-lg-6">
                                        <h4>项目负责人：<s:property value="#request.project.LeaderName"/></h4>
                                        <h4>组员：<s:property value="#request.project.StudentOther"/></h4>
                                        <h4>项目简介：</h4></h5><s:property value="#request.project.ProjectNemo"/></h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-4">
                            <div class="panel panel-primary">
                                <div class="panel-heading text-center">大创展投票系统</div>
                                <div class="panel-body">
                                    <div class="row"><img id="pro_logo" src="images/user_face.jpg" class="center-block img-circle" alt="Image"></div>
                                    <br/>
                                    <div class="">
                                        <form class="form-inline" action="login" method="post">
                                                                                        <div class="input-group">
                                                <input type="text" class="form-control" value="<s:property value='#request.project.ProjectID'/>" name="projectID" readonly="readonly"  />                                                  <span class="input-group-btn">
                                                    <button type="submit" class="btn btn-info">投票</button>
                                                </span>
                                            </div>
                                            <br/>
                                            <div class="input-group">
                                                <input type="text" class="form-control" placeholder="学号" name="userNo">
                                                <span class="input-group-btn">
                                                    <button type="submit" class="btn btn-info">投票</button>
                                                </span>
                                            </div>
                                        </form>
                                    </div>
                                    <br/>
                                    <form class="form-inline signup" role="form" action="projectSearch" method="POST">
                                        <div class="input-group">
                                            <input type="text" class="form-control" placeholder="搜索项目" name="search">
                                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-info">走你</button>
                            </span>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </body>

        </html>
