<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
		<jsp:param value="Update Profile" name="HTMLtitle" />
	</jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-4">
				<div class="shadow-sm p-3 mb-5 bg-white "
					style="min-height: max-content; padding: 20px; border-radius: 15px;">
					<div style="display: flex;">
						<img src="https://cdn-icons-png.flaticon.com/512/147/147133.png"
							alt="" width="55px" height="55px"
							style="margin-right: 10px; border-radius: 100%;">
						<div>
							<h4 style="margin: 0;">${fullName}</h4>
							<p style="margin: 0;">${title}</p>
							<div class="col-2 align-self-center">
								<button class="btn btn-success" id="follow">Follow</button>
							</div>
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
			<div class="col-8">
				<button class="btn btn-light" style="border-radius: 100px">Profile</button>
				<button class="btn btn-light" style="border-radius: 100px">Activity</button>
				<br> <br>
				<div class="shadow-sm p-3 mb-5 bg-white"
					style="width: 100%; min-height: max-content; padding: 20px; border-radius: 15px;">
					<h4>Experience</h4>
					<div id="experience-field"></div>

					<br>
					<div id="experiencesMD"></div>
					<%
					int i = 0;
					%>
					<c:forEach var="e" items="${ex}">
						<%
						i = i + 1;
						%>
						<div class="c-ibc d-flex align-items-center">
							<i class='bx bx-map-pin fs-2'></i>
							<div class="p-3">
								<h4>${e.getPosition()}(${e.getStartDate().split("-")[0]}-
									${e.getEndDate().split("-")[0]})</h4>
								<small>${e.getCompanyName()}</small>
							</div>
						</div>
					</c:forEach>


				</div>
				<div class="shadow-sm p-3 mb-5 bg-white"
					style="width: 100%; min-height: max-content; padding: 20px; border-radius: 15px;">
					<h4>Education</h4>
					<div id="education-field"></div>

					<br>
					<div id="educationsMD"></div>
					<c:forEach var="e" items="${ed}">
						<div class="d-flex align-items-center">
							<i class='bx bx-map-pin fs-2'></i>
							<div class="p-3">
								<h4>${e.getEducationName()}
									(${e.getStartDate().split("-")[0]} -
									${e.getEndDate().split("-")[0]})</h4>
								<small>${e.getIntitutionName()}</small>
							</div>
						</div>
					</c:forEach>

				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../../footer.jsp"></jsp:include>
	<script>
	const followBtn = document.querySelector("#follow");
	followBtn.addEventListener("click", () => {
		if(followBtn.innerHTML == "Follow") {
			followBtn.classList.remove("btn-success");
			followBtn.classList.add("btn-outline-success");
			followBtn.innerHTML = "Unfollow";
		} else {
			followBtn.classList.add("btn-success");
			followBtn.classList.remove("btn-outline-success");
			followBtn.innerHTML = "Follow";
		}
	});
</script>
</body>