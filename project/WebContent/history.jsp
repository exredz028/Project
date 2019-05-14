<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
</head>
<body>
<script>
	function dateCheck() {
		var d = new Date();
		document.getElementById("d").innerHTML = d;
	}
</script>
	<h2 align="center">History Table</h2>

	<table width="100">
		<tr>
			<th><div align="center">Height</div></th>
			<th><div align="center">Weight</div></th>
			<th><div align="center">Body Mass Index : BMI</div></th>
			<th><div align="center">Means</div></th>
			<th><div align="center">Date</div></th>
		</tr>
		<tr>
			<%
				String height1 = request.getParameter("height");
				String weight1 = request.getParameter("weight");
				String heightunits = request.getParameter("heightunits");
				String weightunit = request.getParameter("weightunits");
				double height = Double.parseDouble(height1);
				double weight = Double.parseDouble(weight1);
				if(heightunits == "inches")
					height /= 39.3700787;
				if(weightunit == "lb")
					weight /= 2.20462;
				double BMI = Math.round(weight/ Math.pow(height, 2) * 10000);
				double output = Math.round(BMI * 100) / 100;
				String m;
				if (output < 18.5){
					m = "Underweight";
				}else if(output >= 18.5 && output <= 25){
					m = "Normal";
				}else if (output >= 25 && output <= 30){
					m = "Obese";
				}else{
					m = "Overweight";
				}

			%>
		</tr>
		<% if(height1!=null && weight1!=null){%>
		<tr>
		<td><div align="center"><%=height1 %></div></td>
		<td><div align="center"><%=weight1 %></div></td>
		<td><div align="center"><%=output %></div></td>
		<td><div align="center"><%=m %></div></td>
		<td><div align="center"><p id="d"></p></div></td>
		</tr>
		<% } %>
	</table>

</body>
</html>
