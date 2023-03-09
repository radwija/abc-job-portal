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
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

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
		<jsp:param value="Dashboard" name="HTMLtitle" />
	</jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-3">
				<div class="shadow-sm p-3 mb-5 bg-white "
					style="width: 100%; min-height: max-content; padding: 20px; border-radius: 15px;">
					<div style="display: flex;">
						<img
							src="https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg"
							alt="" width="55px" height="55px"
							style="margin-right: 10px; border-radius: 100%;">
						<div>
							<a href="profile"
								style="color: inherit; text-decoration: inherit;">
								<h4 style="margin: 0;">${fullName}</h4>
							</a>
							<p style="margin: 0;">${title}</p>
						</div>
					</div>
					<br>
					<p>${about}</p>
					<div class="d-flex" style="margin-bottom: 10px">
						<i class='bx bx-building fs-2' style="margin-right: 10px"></i>
						<div>
							<h5 style="margin: 0">Company</h5>
							<small>${company}</small>
						</div>
					</div>
					<div class="d-flex" style="margin-bottom: 10px">
						<i class='bx bx-envelope fs-2' style="margin-right: 10px"></i>
						<div>
							<h5 style="margin: 0">Email</h5>
							<small>${email}</small>
						</div>
					</div>
					<div class="d-flex" style="margin-bottom: 10px">
						<i class='bx bx-globe fs-2' style="margin-right: 10px"></i>
						<div>
							<h5 style="margin: 0">Website</h5>
							<small>${website}</small>
						</div>
					</div>
				</div>
			</div>
			<div class="col-6">
				<div class="shadow-sm p-3 mb-5 bg-white"
					style="width: 100%; height: max-content; background-color: white; border-radius: 15px;">
					<img height="60px" width="60px"
						src="https://icon-library.com/images/avatar-icon-images/avatar-icon-images-4.jpg"
						alt="" style="margin-right: 10px; border-radius: 100%;"> <input
						type="text" style="width: 520px; height: 50px; border-radius: 100px"
						placeholder="Create post">
				</div>

				<div class="shadow-sm p-3 mb-5 bg-white" style="border-radius: 15px;">
					<div style="display: flex;">
						<img src="https://cdn-icons-png.flaticon.com/512/147/147133.png"
							alt="" width="55px" height="55px"
							style="margin-right: 10px; border-radius: 100%;">
						<div>
							<h5 style="margin: 0;">Uzumaki Naruto</h5>
							<p style="margin: 0;">2d ago</p>
						</div>
					</div>
					<br> <img src="https://i.pinimg.com/736x/b4/6f/ca/b46fcaece36d4bbd2a8159136a99391a--keyboard.jpg" alt="" width="100%" height="300px"> <br>
					<br>
					<div style="display: flex; justify-content: space-between;">
						<span><i class="bi bi-hand-thumbs-up"></i> Like</span> <span><i
							class="bi bi-chat"></i> Comment</span> <span><i
							class="bi bi-share"></i> Share</span>
					</div>

				</div>


			</div>
			<div class="col-3"></div>
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