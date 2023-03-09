
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
		<jsp:param value="Forgot Password" name="HTMLtitle" />
	</jsp:include>
	<div class="container" style="padding-top: 50px;">
		<div class="row">
			<!-- Illustration -->
			<div class="col col-md-7 text-center"
				style="display: flex; justify-content: center;">
				<div
					style="width: 525px; height: 415px; background-image: url(images/4443330.svg); background-repeat: no-repeat;">
				</div>
			</div>

			<!-- Form -->
			<div class="col col-md-4">
				<div class="shadow-sm p-3 mb-5 bg-white"
					style="width: 400px; min-height: min-content; background-color: yellow; padding: 20px 20px 20px 20px; border-radius: 15px;">
					<h3>Forgot password</h3>
					<div class="alert alert-danger ${message == null ? "
						d-none" : "d-block"}" role="alert">${message}</div>
					<form id="form" class="needs-validation" action="forgot-password"
						method="post" novalidate>
						<div id="email-input" class="input-field form-floating">
							<input id="emailAddress" type="email" name="emailAddress"
								class="form-control" placeholder="Email" required maxlength="40" />
							<label for="emailAddress" class="form-label"
								style="color: #6F7174;">Email</label>
							<div class="invalid-feedback">Required</div>
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
        const email = document.getElementById('emailAddress');

        const emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/

        let emailBool = false;


        email.addEventListener('input', (event) => {
            if (email.value.match(emailRegex)) {
                emailBool = true;
            } else {
                emailBool = false;
            }
        })

        Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
                if (emailBool === false) {
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
