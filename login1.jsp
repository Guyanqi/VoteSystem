<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'login.jsp' starting page</title>
    
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">    
    <meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
    <meta http-equiv="description" content="This is my page">
    <!--
    <link rel="stylesheet" type="text/css" href="styles.css">
    -->
    
  </head>
  
  <body>

    <h3><font color="blue">带有验证码的登陆界面</font></h3>
    
    <s:form action="LoginValidateAction" >
    
        用户名:<s:textfield name="username"></s:textfield><br>
        密码    :<s:password name="password"></s:password><br>
        验证码:<s:textfield name="checkCode"></s:textfield>
　　　　　
　　　　　<!--若要点击图片刷新，重新得到一个验证码，要在后面加上个随机数，这样保证每次提交过去的都是不一样的path，防止因为缓存而使图片不刷新-->
        <img src="<s:url action="createImageAction"></s:url>" onclick="this.src='CreateImageAction?'+ Math.random()" title="点击图片刷新验证码"/><br>
        <s:actionerror cssStyle="color:red"/>
        
        <s:submit value="提交"></s:submit>
    
    </s:form>

  </body>
</html>