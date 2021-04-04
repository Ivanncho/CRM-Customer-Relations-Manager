<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>

	<head>
		
		<title>CRM</title>
	
		<link type="text/css" 
		rel="stylesheet" 
		href="${pageContext.request.contextPath}/resources/css/style.css"/>
	
	</head>
	<body>
	
		<div id="wrapper">
			<div id="header">
				<h2>CRM-Customer Relation Manager</h2>
			</div>	
		</div>
		<div id="container">
			<div id="content">
				
				<!-- put new button: Add Customer -->
				<input type="button" value="Add Customer"
					onclick="window.location.href='showFormForAdd'; return false;"
					class="add-button"
				/>
				
				<table>
					<tr>
						<th>Id</th>
						<th>First Name</th>
						<th>Last Name</th>
						<th>Email</th>
						<th>Action</th>
					</tr>
					
					<c:forEach var="tempCustomer" items="${customers}">
					<!-- Construct an update link with customer id -->
					
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}"/>
					</c:url>
					
						<tr>
							<td>${tempCustomer.id}</td>
							<td>${tempCustomer.firstName}</td>
							<td>${tempCustomer.lastName}</td>
							<td>${tempCustomer.email}</td>
							
							<td>
								<!-- Display the update link -->
								<a href="${updateLink}">Update</a>
							</td>
							
						</tr>
					</c:forEach>
					
				</table>
				
			</div>
		</div>
		
	
	</body>

</html>