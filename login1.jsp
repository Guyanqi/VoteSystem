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

    <h3><font color="blue">������֤��ĵ�½����</font></h3>
    
    <s:form action="LoginValidateAction" >
    
        �û���:<s:textfield name="username"></s:textfield><br>
        ����    :<s:password name="password"></s:password><br>
        ��֤��:<s:textfield name="checkCode"></s:textfield>
����������
����������<!--��Ҫ���ͼƬˢ�£����µõ�һ����֤�룬Ҫ�ں�����ϸ��������������֤ÿ���ύ��ȥ�Ķ��ǲ�һ����path����ֹ��Ϊ�����ʹͼƬ��ˢ��-->
        <img src="<s:url action="createImageAction"></s:url>" onclick="this.src='CreateImageAction?'+ Math.random()" title="���ͼƬˢ����֤��"/><br>
        <s:actionerror cssStyle="color:red"/>
        
        <s:submit value="�ύ"></s:submit>
    
    </s:form>

  </body>
</html>