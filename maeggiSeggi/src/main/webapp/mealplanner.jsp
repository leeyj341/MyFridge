<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>내 주간 식단</title>
</head>
<body>
	<script type="text/javascript">
		var d = new Date();
		var day = d.getMonth() +"/"+ d.getDate() +"/"+ d.getDay();
	</script>

	<table id="weeklyplanner">


		<%
			for (int i = 0; i < 7; i++) {
		%>

		<tr>
			<td><script>day</script></td>

		</tr>

		<%
			}
		%>

	</table>







</body>
</html>