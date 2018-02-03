<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>JSTL</title>
</head>
<body>
	<%
		boolean flag=false;
	%>
		<c:out value="this is similar tag like expression => c:out"/><br>
		<%-- <c:set var="num" value="${10,20,30,40 }" scope="session"/> --%>
		<form action="Set.jsp">
			<span style="color:orange">click submit button to use c:set tag</span> 
			<c:set var="addition" value="${10+20}" scope="session"/>
			<input type="submit" value="submit">
		</form>
</body>
</html>