<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<%-- <div class="container">
	<h1>Reset your password</h1>
	<form:form action="reset" method="post">
		<div class="mb-3">
			<label for="password" class="form-label">New Password</label> <input
				type="password" class="form-control" id="password" name="password"
				required>
			<div class="invalid-feedback">Password required & must be match
			</div>
		</div>
		<div class="mb-3">
			<label for="passwordConfirmation" class="form-label">New
				Password Confirmation</label> <input type="password" class="form-control"
				id="passwordConfirmation" required>
			<div class="invalid-feedback">Password required & must be match
			</div>
		</div>
		<button type="submit" class="btn btn-primary">Update Password</button>
	</form:form>
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
	<jsp:include page="../../header.jsp">
		<jsp:param value="Reset" name="HTMLtitle" />
	</jsp:include>
	<div class="container" style="padding-top: 50px;">
		<div class="row">
			<!-- Illustration -->
			<div class="col col-md-7 text-center"
				style="display: flex; justify-content: center;">
				<div
					style="width: 525px; height: 525px; background-image: url(images/reset-password.svg); background-repeat: no-repeat; width: 525px;">
				</div>
			</div>

			<!-- Form -->
			<div class="col col-md-4">
				<div class="shadow-sm p-3 mb-5 bg-white"
					style="width: 400px; min-height: min-content; background-color: yellow; padding: 20px 20px 20px 20px; border-radius: 15px;">
					<h3>Reset Password</h3>
					<form id="form" class="needs-validation" action="reset"
						method="post" novalidate>
						<div class="input-field form-floating">
							<input id="new-password" type="password" name="new-password"
								class="form-control" placeholder="New password" required
								maxlength="40" /> <label for="email" class="form-label"
								style="color: #6F7174;">New password</label>
							<div class="invalid-feedback">Enter 8-20 characters</div>
						</div>
						<div class="input-field form-floating">
							<input id="confirm-password" type="password" name="password"
								class="form-control" placeholder="Confirm password" required
								maxlength="20"> <label for="password" class="form-label"
								style="color: #6F7174;">Confirm password</label>
							<div class="invalid-feedback">Password must be match</div>
						</div>
						<div>
							<button class="btn btn-primary" type="submit"
								style="width: 100%; margin-top: 10px; border-radius: 100px;">Submit
								form</button>
							<!-- <input type="submit" value="Sign up" /> -->
						</div>
					</form>
					<hr>
					<div style="display: flex; justify-content: center;">
						<p style="margin-bottom: 0rem;">
							Already have an account? <a href="#">Sign in now</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="../../footer.jsp"></jsp:include>

	<script>
        const forms = document.querySelectorAll('form');
        const newPassword = document.getElementById('new-password');
        const confirmPassword = document.getElementById('confirm-password');


        let newPasswordBool, confirmPasswordBool, isPasswordMatch = false;

        newPassword.addEventListener('input', (event) => {
            if (newPassword.value.trim().length >= 8) {
                newPasswordBool = true;
            } else {
                newPasswordBool = false;
            }
        })
        confirmPassword.addEventListener('input', (event) => {
            if (confirmPassword.value.trim().length >= 8) {
                confirmPasswordBool = true;
            } else {
                confirmPasswordBool = false;
            }
        })
        confirmPassword.addEventListener('input', (event) => {
            if (newPassword.value.trim() === confirmPassword.value.trim()) {
                isPasswordMatch = true;
            } else {
                isPasswordMatch = false;
            }
        })

        Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
                if (newPasswordBool === false || confirmPasswordBool === false || isPasswordMatch === false) {
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

</html>