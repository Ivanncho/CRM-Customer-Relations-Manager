<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

	<head>
		
		<title>CRM</title>
	
	</head>
	<body>
	
		<div id="wrapper">
			<div id="header">
				<h2>CRM-Customer Relation Manager</h2>
			</div>	
		</div>
		<div id="container">
			<div id="content">
				
				<table>
					<tr>
						<th>Id</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
					</tr>
					
					<c:forEach var="tempCustomer" items="${customers}">
						<tr>
							<td>${tempCustomer.id}</td>
							<td>${tempCustomer.firstName}</td>
							<td>${tempCustomer.lastName}</td>
							<td>${tempCustomer.email}</td>
						</tr>
					</c:forEach>
					
				</table>
				
			</div>
		</div>
		
	
	</body>

</html>