<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Available Course</title>
</head>
<body>
	<!-- left navigation -->
	<table style="float: left" width=20%>
		<tr><td><%@ include file="SamePart.jsp"%></td></tr>
	</table>

	<!-- content -->
	
       
        <table class="borderAll" border="1px">
        <tr ><td colspan=8><h1><center>Available Courses</center></h1></td><tr>
            <tr>
               <th>#</th>
                <th>CourseID</th>
                <th>Course Name</th>
                <th>Course Start Date</th>
                <th>Course End Date</th>
                <th>Course Credit</th>
                <th>Course Maximum Size</th>
                <th>Course Description</th>
                <th></th>
               
            </tr>
            
 <c:forEach var="course" items="${course}" varStatus="status">
                <tr class="${status.index%2==0?'even':'odd'}">
                     <td class="nowrap">${status.index + 1}</td>
                    <td class="nowrap">${course.courseId}</td>
                    <td class="nowrap">${course.courseName}</td>
                    <td class="nowrap">${course.courseStart}</td>
                    <td class="nowrap">${course.courseEnd}</td>
                    <td class="nowrap">${course.courseCredit}</td>
                    <td class="nowrap">${course.courseMaxSize}</td>
                    <td class="nowrap">${course.courseDesc}</td>
                    <td class="nowrap">
                        <c:url var="updurl" scope="page" value="/checkEnrollment">
                            <c:param name="id" value="${course.courseId}"/>                            
                        </c:url>
                        <a href="${updurl}">Enroll</a>
                        
                    </td>
                    
                </tr>
            </c:forEach>
        </table>
</body>
</html>