<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%-- <div class="container">
	<form action="" method="get" class="mb-4">
		<h1>Search Other</h1>
		<input type="text" class="form-control" name="q"
			placeholder="Search Other"
			value="<%=request.getParameter("q") != null ? request.getParameter("q") : ""%>">
		<div id="searchHelp" class="form-text">Press enter to search</div>
	</form>

	<div>
		<h1>${notFound == true ? "Not Found" : ""}</h1>
		<c:forEach var="s" items="${selected}">
			<div
				class="d-flex align-items-center border mb-3 rounded p-5 shadow-sm">
				<div>
					<h2>${s.getFirstName()}${s.getLastName()}</h2>
					<p>${s.getTitle()}</p>
				</div>
				<form action="result" method="post" class="ms-auto">
					<input type="hidden" name="uId" value="${s.getUserId()}">
					<button type="submit" class="btn btn-outline-info ms-auto">View
						Profile</button>
				</form>
			</div>
		</c:forEach>
	</div>
</div>
<jsp:include page="../../footer.jsp"></jsp:include> --%>


<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Profile Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet" />
<style>
.form-floating {
	min-height: 60px;
	margin-bottom: 15px;
}

.form-floating>input {
	border-radius: 100px;
}
</style>

</head>

<body style="background-color: #FAFAFA;">
	<jsp:include page="../../header.jsp">
		<jsp:param value="Search" name="HTMLtitle" />
	</jsp:include>
	<div class="container">
		<h2>Search User</h2>
		<div class="row">
			<form action="" method="get" style="display: flex">
				<input id="searchInput" type="text"
					class="form-control rounded-pill" name="q"
					placeholder="Search Other"
					value="<%=request.getParameter("q") != null ? request.getParameter("q") : ""%>"
					style="width: 620px; height: 48px; margin-right: 15px">
				<button id="myBtn" class="btn btn-light rounded-pill" type="submit"
					style="height: 48px;">Search</button>
			</form>
		</div>
		<div>
			<h1>${notFound == true ? "Not Found" : ""}</h1>
			<c:forEach var="s" items="${selected}">
				<div
					class="d-flex align-items-center border mb-3 rounded p-5 shadow-sm">
					<div>
						<h2>${s.getFirstName()}${s.getLastName()}</h2>
						<p>${s.getTitle()}</p>
					</div>
					<form action="result" method="post" class="ms-auto">
						<input type="hidden" name="uId" value="${s.getUserId()}">
						<button type="submit" class="btn btn-outline-info ms-auto">View
							Profile</button>
					</form>
				</div>
			</c:forEach>
		</div>
	</div>
	<jsp:include page="../../footer.jsp"></jsp:include>


	<script>
		var input = document.getElementById("searchInput");

		input.addEventListener("keypress", function(event) {
			if (event.key === "Enter") {
				event.preventDefault();
				document.getElementById("myBtn").click();
			}
		});
	</script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
		integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"
		integrity="sha384-mQ93GR66B00ZXjt0YO5KlohRA5SY2XofN4zfuZxLkoj1gXtW8ANNCe9d5Y3eG5eD"
		crossorigin="anonymous"></script>
</body>

</html>