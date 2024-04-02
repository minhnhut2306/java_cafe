<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "jakarta.tags.core" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Import student form the excel file</title>
</head>
<body>
<h1> Import students from the Execl file (.xlsx)</h1>
<base href="/java_cafe_import_export_excel/">
<form action="/java_cafe_import_export_excel/importStudent" method="post" enctype="multipart/form-data">
	<h3>Student files: <input name="studentExcelFile" type="file"/> (.xlsx) </h3><br/>
	<input type="submit" name="importStudent" value="Import Students"/>
</form>
<h2>${message }</h2>
<c:if test="${not empty fileName}">
	File Name: ${fileName }
</c:if>
<a href="/java_cafe_import_export_excel/listOfStudents"> List of students</a>
</body>

</html>