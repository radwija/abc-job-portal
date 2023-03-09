
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD"
	crossorigin="anonymous">
<link rel="stylesheet" href="style/style.css">
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
	<jsp:include page="../header.jsp">
		<jsp:param value="Login" name="HTMLtitle" />
	</jsp:include>
	<div class="container" style="padding-top: 50px;">
		<div class="container">
			<div class="row">
				<div class="col-6">
					<h1>Welcome to ABC Jobs</h1>
					<h3>Connecting programmers with their dream jobs</h3>
					<br>
					<p>Whether you're just starting out or looking to take your
						career to the next level, we're here to help you connect with top
						employers and land the job of your dreams.</p>
					<br>

					<%
					if ((Boolean) session.getAttribute("isLogin") == null) {
					%>
					<a class="btn btn-primary" href="registration"
						style="border-radius: 100px">Register</a> <a
						class="btn btn-outline-primary" href="login"
						style="border-radius: 100px">Login</a>
					<%
					}
					%>


				</div>
				<div class="col-6">
					<div
						style="width: 620px; height: 410px; background-image: url(images/home.svg); background-repeat: no-repeat;">
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>

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