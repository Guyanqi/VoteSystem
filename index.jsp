<!DOCTYPE html>
<html lang="en">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />。
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
       <center>
        		<h2>通知:投票系统将于14:30分停止投票.</h2>
      <center/>
            <div class="row">
                <div class="col-lg-4"> <img src="images/bg.jpg" height="500px" width="750px" float="right" /></div>
                <div class="col-lg-4 col-lg-offset-4">
                    <h1>大创展投票系统</h1>
                    <h2 class="subtitle">Vote for InnovationCamp</h2>
                    <form class="form-inline signup" role="form" action="projectSearch" method="POST">
                        <div class="input-group">
                            <input type="text" class="form-control" placeholder="搜索项目" name="search">
                            <span class="input-group-btn">
                                <button type="submit" class="btn btn-info">走你</button>
                            </span>
                        </div>
                    </form>
                    <br/>
                    <button type="button" class="btn btn-info btn-block btn-lg" onclick="window.location.href='projectSearch.action'">我要投票</button>
                    <br/>
                    <button type="button" class="btn btn-info btn-block btn-lg" onclick="window.location.href='voterand.jsp'">投票排名</button>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-1.10.2.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
</body>

</html>
