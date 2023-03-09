<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>ABC Jobs | <%=request.getParameter("HTMLtitle") != null ? request.getParameter("HTMLtitle") : "Assignment 2"%>
</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<link rel="stylesheet" href="style/style.css">
<link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css'
	rel='stylesheet'>
<link href="css/zephyr.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
</head>

<body style="min-height: 100vh;">
	<nav class="navbar navbar-expand-lg shadow-sm p-3 mb-5 bg-white"
		style="background-color: white;">
		<div class="container">
			<a class="navbar-brand"
				href="<%=(Boolean) session.getAttribute("isLogin") != null ? request.getContextPath() +  "/dashboard" : request.getContextPath() + "/home"%>">
				<img src="images/abc-jobs.png" alt="abc_job_logo" height="24px">
			</a>
			<%
			if ((Boolean) session.getAttribute("isLogin") != null) {
			%>
			<div class="collapse navbar-collapse justify-content-end"
				id="navbarNav">
				<ul class="navbar-nav">
					<li class="nav-item"><a
						class="nav-link <%=request.getServletPath().equals("/WEB-INF/views/search/search.jsp")
		? "text-primary border-bottom border-3 border-primary"
		: request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white"
				: "text-dark border-bottom border-3  border-white"%>"
						href="<%= request.getContextPath() %>/search">Search</a></li>
					<li class="nav-item"><a
						class="nav-link <%=request.getServletPath().equals("/WEB-INF/views/dashboard/update-profile.jsp")
		? "text-primary border-bottom border-3 border-primary"
		: request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white"
				: "text-dark border-bottom border-3  border-white"%>"
						href="<%= request.getContextPath() %>/profile">Profile</a></li>
					<li class="nav-item"><a
						class="nav-link <%=request.getServletPath().equals("/WEB-INF/views/#/index.jsp")
		? "text-primary border-bottom border-3 border-primary"
		: request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white"
				: "text-dark border-bottom border-3  border-white"%>"
						href="#">Network</a></li>
					<li class="nav-item"><a
						class="nav-link <%=request.getServletPath().equals("/WEB-INF/views/#/index.jsp")
		? "text-primary border-bottom border-3 border-primary"
		: request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white"
				: "text-dark border-bottom border-3  border-white"%>"
						href="#">Message</a></li>
					<li class="nav-item"><a
						class="nav-link <%=request.getServletPath().equals("/WEB-INF/views/#/index.jsp")
		? "text-primary border-bottom border-3 border-primary"
		: request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white"
				: "text-dark border-bottom border-3  border-white"%>"
						href="#">Notification</a></li>
					<%
					if ((Boolean) session.getAttribute("isLogin") != null && session.getAttribute("roleId").toString().equals("1")) {
					%>
					<li class="nav-item"><a
						class="nav-link <%=request.getServletPath().equals("/WEB-INF/views/administrator/index.jsp") ? "text-primary border-bottom border-3 border-primary" : request.getServletPath().equals("/WEB-INF/views/index.jsp") ? "text-white"
			: "text-dark border-bottom border-3  border-white"%>"
						href="<%=request.getContextPath()%>/admin">Admin</a></li>
					<%
					}
					%>
					<li class="nav-item"><a class="btn btn-outline-danger"
						style="border-radius: 100px" href="<%=request.getContextPath()%>/logout">Log out</a></li>
				</ul>
			</div>
			<%
			} else {
			%>
			<%
			}
			%>
		</div>
	</nav>

	</div>
	</div>
	</nav>

	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
		integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
		crossorigin="anonymous"></script>