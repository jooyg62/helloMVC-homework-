<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 에 대한 core을 사용을 할때 프리픽스로서 c를 사용하겠다. --%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>

<body>
	<%-- JSP Expression Language --%>
	<ul>
		<li>Name: ${customer.id}</li>
		<li>Name: ${customer.email}</li>
		<li>Name: ${customer.name}</li>
	</ul>

	<%-- JSTL을 사용해서 출력을 해보겠다.--%>

	<table style="border: 1px solid red; padding: 10px;">
		<%-- prefix가 c인 것을 사용하여 루프를 돌리겠다
	c:forEach라는 태그를 사용해서 루프를 도는데 items는 customerList이고 하나를 꺼내서 변수를 저장하겠다.--%>
		<c:forEach> var="customer" items="${customerList}">
	 <tr>
				<td>${customer.id }</td>
				<td>${customer.name }</td>
				<td>${customer.email }</td>
		</c:forEach>

	</table>
</body>
</html>