<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
		<jsp:param value="Login" name="HTMLtitle" />
	</jsp:include>
	<div class="container" style="padding-top: 50px;">
		<div class="row">
			<!-- Illustration -->
			<div class="col col-md-7 text-center"
				style="display: flex; justify-content: center;">
				<div
					style="width: 525px; height: 324px; background-image: url(images/register.svg); background-repeat: no-repeat; width: 525px;">
				</div>
			</div>

			<!-- Form -->
			<div class="col col-md-4">
				<div class="shadow-sm p-3 mb-5 bg-white"
					style="width: 400px; min-height: 455px; background-color: yellow; padding: 20px 20px 20px 20px; border-radius: 15px;">
					<h3>Sign up</h3>
					<div class="alert alert-danger ${errMsg != null ? "
						d-block" : "d-none" }" role="alert">${errMsg}</div>
					<form id="form" class="needs-validation" action="registration"
						method="post" novalidate>
						<div id="firstName-input" class="input-field form-floating">
							<input id="firstName" type="text" name="firstName"
								class="form-control" placeholder="First name" required
								maxlength="25" /> <label for="firstName" class="form-label"
								style="color: #6F7174;">First name</label>
							<div class="invalid-feedback">Required</div>
						</div>
						<div id="lastName-input" class="input-field form-floating">
							<input id="lastName" type="text" name="lastName"
								class="form-control" placeholder="Last name" required
								maxlength="25" /> <label for="lastName" class="form-label"
								style="color: #6F7174;">Last name</label>
							<div class="invalid-feedback">Required</div>
						</div>
						<div id="email-input" class="input-field form-floating">
							<input id="emailAddress" type="email" name="email"
								class="form-control" placeholder="Email" required maxlength="40" />
							<label for="email" class="form-label" style="color: #6F7174;">Email</label>
							<div class="invalid-feedback">Required</div>
						</div>
						<div id="password-input" class="input-field form-floating">
							<input id="password" type="password" name="password"
								class="form-control" placeholder="Password" required
								maxlength="20"> <label for="password" class="form-label"
								style="color: #6F7174;">Password</label>
							<div class="invalid-feedback">Enter 8-20 characters</div>
						</div>
						<!-- 	<div id="password-input" class="input-field form-floating">
							<input id="passwordConfirmation" type="password"
								name="passwordConfirmation" class="form-control"
								placeholder="Password" required maxlength="20"> <label
								for="password" class="form-label" style="color: #6F7174;">Password</label>
							<div class="invalid-feedback">Enter 8-20 characters</div>
						</div> -->

						<button class="btn btn-primary" type="submit"
							style="width: 100%; margin-top: 10px; border-radius: 100px;">Submit
							form</button>
						<!-- <input type="submit" value="Sign up" /> -->

					</form>
					<hr>
					<div style="display: flex; justify-content: center;">
						<p style="margin-bottom: 0rem;">
							Already have an account? <a href="login">Sign in now</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../../footer.jsp"></jsp:include>

	<script>
			const forms = document.querySelectorAll('form');
			const firstName = document.getElementById('firstName');
			const lastName = document.getElementById('lastName');
			const email = document.getElementById('emailAddress');
			const password = document.getElementById('password');

			const emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/

			let fNameBool, lNameBool, emailBool, passwordBool = false;

			firstName.addEventListener('input', (event) => {
				if (firstName.value.trim().length > 0) {
					fNameBool = true;
				} else {
					fNameBool = false;
				}
			})
			lastName.addEventListener('input', (event) => {
				if (firstName.value.trim().length > 0) {
					lNameBool = true;
				} else {
					lNameBool = false;
				}
			})
			email.addEventListener('input', (event) => {
				if (email.value.match(emailRegex)) {
					emailBool = true;
				} else {
					emailBool = false;
				}
			})
			password.addEventListener('input', (event) => {
				if (password.value.trim().length >= 8) {
					passwordBool = true;
				} else {
					passwordBool = false;
				}
			})

			Array.from(forms).forEach(form => {
				form.addEventListener('submit', event => {
					if (fNameBool === false || lNameBool === false || emailBool === false || passwordBool === false) {
						event.preventDefault()
						event.stopPropagation()
					}
					form.classList.add('was-validated')
				}, false)
			})
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