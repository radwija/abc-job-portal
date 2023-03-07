<%-- <jsp:include page="../../header.jsp">
	<jsp:param value="Verified" name="HTMLtitle" />
</jsp:include>
<div class="container h-100">
	<div class="row align-items-center">
		<div class="col-6">
			<h1>Verified</h1>
			<p>
				Welcome to community <br> your account has been verified
			</p>
			<a href="login" class="btn btn-primary">Log in</a>
		</div>
		<div class="col-6">
			<img alt="verified" src="images/verified.svg" width="100%">
		</div>
	</div>
</div>
<jsp:include page="../../footer.jsp"></jsp:include> --%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css"
	rel="stylesheet" />
</head>

<body style="background-color: #FAFAFA;">
	<jsp:include page="../../header.jsp">
		<jsp:param value="Verified" name="HTMLtitle" />
	</jsp:include>

	<div class="container"
		style="height: 100vh; display: flex; align-items: center; justify-content: center;">
		<div class="row">
			<div class="col-12"
				style="display: flex; flex-direction: column; align-items: center;">
				<div
					style="width: 400px; height: 410px; background-image: url(images/welcome.svg); background-repeat: no-repeat;">
				</div>
				<h1 style="margin-top: 35px;">Hooray! You have signed up
					successfully! </h1>
					<a href="login" class="btn btn-primary" style="padding: 15px 30px; border-radius: 100px; background-color: #1E98D7; color: white;">Log in</a>

			</div>
		</div>
	</div>
	<jsp:include page="../../footer.jsp"></jsp:include>
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