<%@page import="java.util.Comparator"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.util.ArrayList, java.text.SimpleDateFormat, java.util.Calendar, java.util.Date" %>


<%@page import="com.bsc.beans.Users"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=0.9">
<title>Add User</title>

	<!-- Favicon and Touch Icons -->
	<link rel="icon" href="assets/favicon/logobsc.ico">
	<meta name="msapplication-TileColor" content="#080032">
	<meta name="msapplication-config" content="assets/favicon/browserconfig.xml">
	<meta name="theme-color" content="#ffffff">

<!-- Vendor Styles -->
<link rel="stylesheet" media="screen" href="assets/vendor/boxicons/css/boxicons.min.css" />

<!-- Main Theme Styles + Bootstrap -->
<link rel="stylesheet" media="screen" href="assets/css/theme.min.css">
<link rel="stylesheet" media="screen" href="assets/css/style.css">

<script></script>
<script src="assets/js/function.js"></script>


</head>
<body>

<%@include file="inc/spinner.jsp"%>
<%@include file="inc/navbar.jsp"%>
	<section class="container text-center pt-2 mt-2 mt-md-4">			
		<h2 class="h5 pt-2 pt-lg-0"> Manage User </h2>
		
		<!-- Button trigger modal -->
		<div class="d-flex justify-content-end">
		<button type="button" class="btn btn-warning btn-sm me-1" data-bs-toggle="modal"
			data-bs-target="#exampleModal"><i class="bx bx-movie"></i>Add User</button>
		</div>
		
		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog ">
				<div class="modal-content ">
					<div class="modal-header">
						<h1 class="modal-title fs-5 " id="exampleModalLabel">User Details</h1>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<!-- Form -->
					<form class="text-start" action="/bsc/AddNewUser" method="post">
					<div class="modal-body">
						<div class="mb-3" >
							<label for="exampleFormControlInput1" class="form-label">Name
							</label> <input name="name" type="text" class="form-control" placeholder="Baam"
								id="exampleFormControlInput1" >
						</div>
						<div class="mb-3">
							<label for="exampleFormControlTextarea1" class="form-label">Email</label>
							<input name="email" class="form-control" id="exampleFormControlTextarea1" placeholder="Baam@gmail.com"
								rows="3"></input>
						</div>
						<div class="mb-3">
							<label for="exampleFormControlTextarea1" class="form-label">Password</label>
							<input name="password" type="password" value="123456" class="form-control" 
								id="exampleFormControlInput1" >
						</div>
						<div class="mb-3">
							<label for="exampleFormControlTextarea1" class="form-label">Role</label>
							 <select name="role" class="form-select" id="autoSizingSelect">
									<option selected>Choose...</option>
									<option value="0">Customer</option>
									<option value="1">Staff</option>
									<option value="2">Admin</option>
								</select>
							</div>
					</div>
					<!--  -->
					
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-bs-dismiss="modal">Close</button>
						<button type="submit" class="btn btn-warning">Submit</button>
					</div>
					</form>
				</div>
			</div>
		</div>
	
	<table class="table table-bordered table-hover mt-2 align-middle border-white">
		<thead class="bg-success ">
			<tr>
				<th >Name</th>
				<th >Email</th>
				<th >Password</th>
				<th >Role</th>
			</tr>
		</thead>
<tbody class="bg-black">
    <% ArrayList<Users> users = (ArrayList<Users>) request.getAttribute("users"); %>
    <%
    for (int i = 0; i < users.size(); i++) {
    %>
    <tr>
        <th><%=users.get(i).getName() %></th>
        <td><%=users.get(i).getEmail() %></td>
        <td><%=users.get(i).getPassword() %></td>
        <td>
            <%
            if (users.get(i).getRole() == 0) {
            %>
                Customer
            <%
            } else if (users.get(i).getRole() == 1) {
            %>
                Staff
            <%
            } else if (users.get(i).getRole() == 2) {
            %>
                Admin
            <%
            } else {
            %>
                Unknown Role
            <%
            }
            %>
        </td>
    </tr>
    <%
    }
    %>
</tbody>
	</table>
	</section>
	
	
	
		<script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
	<script
		src="assets/vendor/smooth-scroll/dist/smooth-scroll.polyfills.min.js"></script>

	<!-- Main Theme Script -->
	<script src="assets/js/theme.min.js"></script>
</body>
</html>