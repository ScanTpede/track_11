<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	String msg = (String)request.getAttribute("t_msg");
	String url = (String)request.getAttribute("t_url");
%>
<!DOCTYPE html>
<html>
<script>
	alert("<%=msg%>");
	location.href="<%=url%>";
</script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>