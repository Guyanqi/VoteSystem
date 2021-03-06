<!DOCTYPE html>
<html lang="en">
<!-- <%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %> -->
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <title>大创展项目提交系统</title>
  <!-- Bootstrap -->
  <link href="css/bootstrap.css" rel="stylesheet">
  <link href="css/bootstrap-theme.css" rel="stylesheet">
  <!-- simple style -->
  <link href="css/style.css" rel="stylesheet">
  <link rel="stylesheet" href="css/projectSubmit.css">
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

<body>
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
      <a class="navbar-brand" id="logo" href="index.jsp" style="margin-bottom: 5px"><img src="images/logo.png" weight="45px" height="45px" /></a>
    </div>
         <ul class="nav navbar-nav navbar-right" style="margin-right: 20px">
        <div class="dropdown pull-right">
          <button class="btn dropdown-toggle" type="button" id="login-name" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
            <s:property value="username" /> 
            <span class="caret"></span>
          </button>
          <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
            <li><a href="changePassword.jsp">修改密码</a></li>
            <li><a href="logout.action">注销</a></li>
          </ul>
        </div>
      </ul>
    </div>
  </nav>
  <!--project-submit-->
  <div id="submit-main" class="container">
    <div class="row">
      <div id="submit-box" class="col-md-12" >
        <div class="col-md-6 col-xs-12 submit-box-left-info">
          <h1 class="text-center">Don't</h1>
          <h2 class="text-center">lose your idea！</h2>
          <img src="./images/WIN-1.png" alt="" class="img-responsive">
        </div>
        <div class="col-md-6">
          <form id="submit-form" method="post" enctype="multipart/form-data">
            <!--submit-project-id-->
            <!--<div class="form-group">
              <label for="submit-project-id">项目ID</label>
              <input type="text" id="submit-project-id" class="form-control" name="project_id" required>
            </div>-->
            <!--submit-project-title-->
            <div class="form-group">
              <label for="submit-project-title">项目标题</label>
              <input type="text" id="submit-project-title" class="form-control" name="project_title" aria-describedby="submit-project-title-help" required>
              <span id="submit-project-title-help" class="help-block">不要提交过长的项目标题,否则有可能会影响显示体验</span>
            </div>
            <!--submit-type-->
            <div class="form-group">
              <label for="submit-type">项目类别</label>
              <select id="submit-type" class="form-control" name="project_type">
                <option value="智能硬件"智能硬件</option>
                <option value="互联网+">互联网+</option>
                <option value="智慧生活">智慧生活</option>
                <option value="电子">电子</option>
                <option value="数理">数理</option>
                <option value="软件">软件</option>
                <option value="创意">创意</option>
                <option value="论文">论文</option>
                <option value="通信">通信</option>
                <option value="模式识别与机器学习">模式识别与机器学习</option>
                <option value="其他">其他</option>
              </select>
            </div>
            <!--submit-main-partner-->
            <div class="form-group">
               <label for="submit-main-partner">项目主要负责人</label>
              <input type="text" id="submit-main-partner" class="form-control" name="main_partner" aria-describedby="submit-main-partner-help" required>
              <span id="submit-other-partner-help" class="help-block">输入样例：马小云</span>
            </div>
            <!--submit-other-partner-->
            <div class="form-group">
              <label for="submit-other-partner">项目其他成员</label>
              <input type="text" id="submit-other-partner" class="form-control"  name="other_partner" aria-describedby="submit-other-partner-help" required>
               <span id="submit-other-partner-help" class="help-block">输入样例：小明，小红，小张</span>
            </div>
            <!--submit-img-->
            <div class="form-group">
              <label for="submit-img">上传照片</label>
              <input type="file" id="submit-img" name="project_img">
              <p class="help-block">不要上传过大的照片，上传jpg/jpeg/png格式照片</p>
            </div>
            <!--submit-project-introduction-->
            <div class="form-group">
              <label for="submit-project-introduction">项目简介</label>
              <textarea id="submit-project-introduction" class="form-control" name="project_introduction" rows="5" required maxlength="200" aria-describedby="submit-project-introduction-help" style="resize: none;"></textarea>
              <span id="submit-project-introduction-help" class="help-block">填写项目介绍，150~200字</span>
            </div>
            <!--CAPTCHA-->
            <!--<div class="form-group">
              <label for="submit-CAPTCHA">验证码</label>
              <input id="submit-CAPTCHA" type="text" name="CAPTHA" placeholder="验证码">
              <img src="images/2.jpg">
              <span class="submit-CAPTCHA-text"></span>
            </div>-->
            <!--submit-info-->
            <div class="submit-info">
              <p>你现在可以修改/提交当页内容,请使用chrome7+，IE10+，Safari5+或其他浏览器高速模式提交，否则会导致提交失败，请注意</p>
            </div>
            <!--submit-->
            <button type="button" class="btn btn-primary btn-submit pull-right" id="submit-project">提交</button>
        </div>
      </div>
    </div>
  </div>
  <!--lottery-modal-->
  <div class="modal fade" id="lottery-modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
            &times;
          </button>
          <h4 class="modal-title" id="myModalLabel">
            抽奖
         </h4>
        </div>
          <div class="modal-body" style="overflow: hidden">
            <div class="col-lg-12">
              <form id="project-submit-form" class="form-horizontal" role="form">
                <div id="lottery-user" class="form-group">
                  <label class="col-sm-2 control-label">用户名</label>
                  <div class="col-sm-10">
                    <input class="textin form-control" type="text" placeholder="用户名">
                  </div>
                </div>
                <div id="lottery-psw" class="form-group">
                  <label class="col-sm-2 control-label">密码</label>
                  <div class="col-sm-10">
                    <input class="textin form-control" type="text" placeholder="密码">
                  </div>
                </div>
               <div id="lottery-check" class="form-group">
                  <label class="col-sm-2 control-label">验证码</label>
                  <div class="col-sm-8">
                    <input class="textin form-control" type="text" placeholder="验证码">
                  </div>
                  <div class="col-sm-2"><img src="" style="width: 100%"></div>
                </div>
              </form>
            </div>
          </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">关闭
          </button>
          <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#lottery-result">
            抽奖
          </button>
        </div>
      </div>
    </div>
  </div>

 <!--submit-result-->
<div class="modal fade" id="submit-result">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">提交结果</h4>
      </div>
      <div class="modal-body modal-text">
        <p>不允许有空值</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

  <!--lottery-result-->
  <div class="modal fade" id="lottery-result" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
            &times;
          </button>
          <h4 class="modal-title" id="myModalLabel">
            抽奖结果
         </h4>
        </div>
          <div class="modal-body" style="overflow: hidden">
            <div class="success">
              恭喜你抽中<span id="lo-result"></span>等奖!
            </div>
            <div class="fail">
              很遗憾你没抽中，再接再厉~
            </div>
          </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">关闭
          </button>
        </div>
      </div>
    </div>
  </div>
  <script src="http://apps.bdimg.com/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/projectSubmit.js"></script>
  <script type="text/javascript" src="js/mock.js"></script>
  <script src="js/index.js"></script>
</body>
</html>
