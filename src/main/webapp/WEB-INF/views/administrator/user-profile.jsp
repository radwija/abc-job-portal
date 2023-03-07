<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <jsp:include page="../../header.jsp">
	<jsp:param value="User Profile" name="HTMLtitle" />
	<jsp:param value="../../css/zephyr.css" name="isNested" />
</jsp:include>

<div class="container">
	<form:form modelAttribute="profile" action="update-profile"
		method="post">
		<input type="hidden" name="userDetailsId" value="${id}">
		<div class="row border rounded-3 p-3 mb-4">
			<div
				class="col-2 border-none rounded-circle align-self-stretch text-center fs-1 d-flex align-items-center justify-content-center bg-primary bg-gradient text-white">
				<span>${f}</span> <span>${l}</span>
			</div>
			<div class="col-8">
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="firstName"
						name="firstName" value="${firstName}" required> <label
						for="firstName">First Name</label>
				</div>
				<div class="form-floating mb-3">
					<input type="text" class="form-control" id="lastName"
						name="lastName" value="${lastName}" required> <label
						for="lastName">Last Name</label>
				</div>

				<input type="text" class="form-control" value="${title}"
					name="title" placeholder="Your title">
			</div>
			<div class="col-2 align-self-center">
				<button type="submit" class="btn btn-primary">Save Changes</button>
			</div>
		</div>

		<div class="row">
			<div class="col-9">
				<div class="mb-3">
					<h3>About Me</h3>
					<hr>
					<textarea class="form-control" name="about" id="about" cols="10">${about}</textarea>
				</div>
				<div class="mb-3">
					<div class="d-flex">
						<h3>Experience</h3>
					</div>
					<hr>
					<div id="experiencesMD"></div>
					<c:forEach var="e" items="${ex}">
						<div class="d-flex align-items-center">
							<i class='bx bx-map-pin fs-2'></i>
							<div class="p-3">
								<h4>${e.getPosition()}(${e.getStartDate().split("-")[0]} -
									${e.getEndDate().split("-")[0]})</h4>
								<small>${e.getCompanyName()}</small>
							</div>
						</div>
					</c:forEach>
				</div>
				<div>
					<div class="d-flex">
						<h3>Education</h3>
					</div>
					<hr>
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
			<div class="col-3">
				<div>
					<div class="d-flex align-items-center mb-3">
						<i class='bx bx-building fs-2'></i>
						<div class="form-floating ml-3">
							<input type="text" class="form-control" id="company"
								name="companyName" value="${company}"> <label
								for="company">Company</label>
						</div>
					</div>
					<div class="d-flex align-items-center mb-3">
						<i class='bx bx-envelope fs-2'></i>
						<div class="form-floating ml-3">
							<input type="text" class="form-control" id="email" name="email"
								value="${email}" disabled> <label for="email">Email</label>
						</div>
					</div>
					<div class="d-flex align-items-center mb-3">
						<i class='bx bx-globe fs-2'></i>
						<div class="form-floating ml-3">
							<input type="text" class="form-control" id="website"
								name="website" value="${website}"> <label for="website">Website</label>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form:form>
</div>
<script src="js/profile.js"></script>
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
		<jsp:param value="Update Profile" name="HTMLtitle" />
	</jsp:include>
	<div class="container">
		<div class="row">
			<div class="col-4">
				<div class="shadow-sm p-3 mb-5 bg-white "
					style="min-height: max-content; padding: 20px; border-radius: 15px;">
					<div style="display: flex;">
						<img src="" alt="" width="55px" height="55px"
							style="margin-right: 10px;">
						<div>
							<h4 style="margin: 0;">${fullName}</h4>
							<p style="margin: 0;">${title}</p>


						</div>
					</div>
					<br>
					<p>${about}</p>
					<button type="button" class="btn btn-primary"
						style="width: 100%; border-radius: 100px;" data-bs-toggle="modal"
						data-bs-target="#editBio">Edit bio</button>
					<div class="modal fade" id="editBio" tabindex="-1"
						aria-labelledby="editBioLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h1 class="modal-title fs-5" id="exampleModalLabel">Modal
										title</h1>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<form action="update-profile" method="post">
										<div class="form-floating mb-3">
											<input type="text" class="form-control" id="firstName"
												name="firstName" value="${firstName}" required> <label
												for="firstName">First Name</label>
										</div>
										<div class="form-floating mb-3">
											<input type="text" class="form-control" id="lastName"
												name="lastName" value="${lastName}" required> <label
												for="lastName">Last Name</label>
										</div>
										<input type="text" class="form-control" value="${title}"
											name="title" placeholder="Your title">
										<div class="mb-3">
											<h3>About Me</h3>
											<hr>
											<textarea class="form-control" name="about" id="about"
												cols="10">${about}</textarea>
										</div>
										<div class="form-floating ml-3">
											<input type="text" class="form-control" id="company"
												name="companyName" value="${company}"> <label
												for="company">Company</label>
										</div>
										<div class="form-floating ml-3">
											<input type="text" class="form-control" id="email"
												name="email" value="${email}" disabled> <label
												for="email">Email</label>
										</div>
										<div class="form-floating ml-3">
											<input type="text" class="form-control" id="website"
												name="website" value="${website}"> <label
												for="website">Website</label>
										</div>
										<button type="submit">Save</button>
									</form>
								</div>
							</div>
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
					<button style="border: none; background: none;"
						data-bs-toggle="modal" data-bs-target="#editExperience">+
						Add experience</button>
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
							<div class="interactive-bc">
								<button type="button" class="button-card-hover text-primary"
									data-bs-toggle="modal" data-bs-target="#ex<%=i%>">
									<i class='bx bx-pencil'></i>
								</button>
								<button type="button" class="button-card-hover text-danger">
									<i class='bx bx-trash'></i>
								</button>
							</div>

							<div class="modal fade" id="ex<%=i%>" tabindex="-1"
								aria-labelledby="editBioLabel" aria-hidden="true">
								<div class="modal-dialog">
									<div class="modal-content">
										<div class="modal-header">
											<h1 class="modal-title fs-5" id="exampleModalLabel">Modal
												title</h1>
											<button type="button" class="btn-close"
												data-bs-dismiss="modal" aria-label="Close"></button>
										</div>
										<div class="modal-body">
											<form action="update-experience" method="post">
												<div class="form-floating mb-3">
													<input type="text" class="form-control" id="position"
														name="position" required> <label for="position"
														required>Position</label>
												</div>
												<div class="form-floating mb-3">
													<input type="date" class="form-control" id="startDateEX"
														name="startDateEX" required> <label
														for="startDateEX">Start Date</label>
												</div>
												<div class="form-floating mb-3">
													<input type="date" class="form-control" id="endDateEX"
														name="endDateEX" required> <label for="endDateEX">End
														Date</label>
												</div>
												<div class="form-floating mb-3">
													<input type="text" class="form-control" id="companyName"
														name="companyNameEX" required> <label
														for="companyName">Company Name</label>
												</div>
												<button type="submit" class="btn btn-light"
													style="border-radius: 100px">Submit</button>
											</form>
										</div>
									</div>
								</div>
							</div>
						</div>



					</c:forEach>

					<div class="modal fade" id="editExperience" tabindex="-1"
						aria-labelledby="editBioLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h1 class="modal-title fs-5" id="exampleModalLabel">Modal
										title</h1>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<form action="update-experience" method="post">
										<div class="form-floating mb-3">
											<input type="text" class="form-control" id="position"
												name="position" required> <label for="position"
												required>Position</label>
										</div>
										<div class="form-floating mb-3">
											<input type="date" class="form-control" id="startDateEX"
												name="startDateEX" required> <label
												for="startDateEX">Start Date</label>
										</div>
										<div class="form-floating mb-3">
											<input type="date" class="form-control" id="endDateEX"
												name="endDateEX" required> <label for="endDateEX">End
												Date</label>
										</div>
										<div class="form-floating mb-3">
											<input type="text" class="form-control" id="companyName"
												name="companyNameEX" required> <label
												for="companyName">Company Name</label>
										</div>
										<button type="submit" class="btn btn-light"
											style="border-radius: 100px">Submit</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="shadow-sm p-3 mb-5 bg-white"
					style="width: 100%; min-height: max-content; padding: 20px; border-radius: 15px;">
					<h4>Education</h4>
					<div id="education-field"></div>
					<button style="border: none; background: none;"
						data-bs-toggle="modal" data-bs-target="#editEducation">+
						Add education</button>
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
					<div class="modal fade" id="editEducation" tabindex="-1"
						aria-labelledby="editBioLabel" aria-hidden="true">
						<div class="modal-dialog">
							<div class="modal-content">
								<div class="modal-header">
									<h1 class="modal-title fs-5" id="exampleModalLabel">Modal
										title</h1>
									<button type="button" class="btn-close" data-bs-dismiss="modal"
										aria-label="Close"></button>
								</div>
								<div class="modal-body">
									<form action="update-education" method="post">
										<div class="form-floating mb-3">
											<input type="text" class="form-control" id="intitutionName"
												name="intitutionName" required> <label
												for="intitutionName">Intitution Name</label>
										</div>
										<div class="form-floating mb-3">
											<input type="date" class="form-control" id="startDateED"
												name="startDateED" required> <label
												for="startDateED">Start Date</label>
										</div>
										<div class="form-floating mb-3">
											<input type="date" class="form-control" id="endDateED"
												name="endDateED" required> <label for="endDateED">End
												Date</label>
										</div>
										<div class="form-floating mb-3">
											<input type="text" class="form-control" id="educationName"
												name="educationName" required> <label
												for="educationName">Education Name</label>
										</div>

										<button type="submit" class="btn btn-light"
											style="border-radius: 100px">Submit</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script src="../js/profile.js">
		
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