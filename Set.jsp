<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isErrorPage="true" %>
<html>
<head>
</head>
<body>
	<span style="color:red;">10 + 20 = <c:out value="${addition}" /></span><br>
		<c:remove var="addition" />
	
	<span style="color:red;">(Note: after removal of addition variable) 10 + 20 = <c:out value="${addition}" /></span>
	<br><br>
	<span style="color:green;">generating condition for exception: </span>
	<c:catch var="exception">
		<c:out value="${10/0}"/>
	</c:catch>
	<c:if test="${exception!=null}">
		<c:out value="${exception}"/>
	</c:if>
	<br><br>
	
	<c:set var="choice" value="${1}" scope="session"/>
	<c:choose>
		<c:when test="${choice == 1}">
			<span style="color: blue ">1</span> 
		</c:when>
		<c:when test="${choice == 2}">
			<span style="color: blue ">2</span> 
		</c:when>
		<c:when test="${choice == 3}">
			<span style="color: blue ">3</span> 
		</c:when>
		<c:when test="${choice == 4 }">
			<span style="color: blue ">5</span>
		</c:when>
		<c:otherwise>
			<span style="color: blue "> Please Enter Valid Input </span> 
		</c:otherwise> 
	</c:choose>
	<br>
	<%-- <c:forEach items="num" var="i" varStatus="status">
		${status.count}
		${i}
	</c:forEach> --%>
	<br>
	<span style="color:orange">Goto Jstl.jsp</span>
	
	 <c:set var="i" value="0" scope="request"/>  
 	<c:if test="${i == 1}">  
    	 <c:redirect url="Jstl.jsp"/>  
  	</c:if> 
  	 
  	 <c:set var="j" value="0" scope="request"/>  
 	<c:if test="${j == 1}">  
  		<c:import url="https://www.google.co.in/?gfe_rd=cr&dcr=0&ei=YNF1WpzqIO3y8AfNl4PoAg"></c:import> 
  	</c:if> 
	
	<c:url var="details" value="showDetails">
		<c:param name="UserName" value="Chinmay"/>
		<c:param name="RollNo" value="005"/>
	</c:url>
	<br><br>
	<c:out value="${details}" />
</body> 
</html>