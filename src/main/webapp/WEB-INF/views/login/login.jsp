<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- <jsp:include page="../../header.jsp">
    <jsp:param value="Login" name="HTMLtitle" />
</jsp:include>
<div class="d-flex justify-content-center">
  <div class="col-5 px-5 py-2 d-flex flex-column justify-content-center">
    <h1>Sign in to your account</h1>
    <p>Don't have an account yet? <a href="registration">Register Now</a></p>

    <small class="fs-6">Sign in with</small>
    <div class="d-flex gap-3 my-2">
      <a href="" class="text-center w-100 fs-4 border px-4 rounded"><i class='bx bxl-github'></i></a>
      <a href="" class="text-center w-100 fs-4 border px-4 rounded"><i class='bx bxl-google' ></i></a>
      <a href="" class="text-center w-100 fs-4 border px-4 rounded"><i class='bx bxl-twitter' ></i></a>
    </div>

    <div class="position-relative border my-3">
      <small class="fs-6 bg-white px-2 position-absolute" style="top: 50%; left: 50%; transform: translate(-50%, -50%);">Or continue with</small>
    </div>

    <div class="alert alert-danger alert-dismissible fade show my-3 ${ message == null ? " d-none" : "d-block" }" role="alert">
      ${ message }
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>

    <div class="alert alert-success alert-dismissible fade show my-3 ${ scMessage == null ? " d-none" : "d-block" }" role="alert">
      ${ scMessage }
      <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
    </div>

    <form:form action="login" method="post">
      <div class="mb-3">
        <label for="emailAddress" class="form-label">Email address</label>
        <input type="email" class="form-control" id="emailAddress" name="email" required>
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">Password</label>
        <input type="password" class="form-control" id="password" name="password" required>
      </div>
      <div class="d-flex flex-column">
        <div class="d-flex">
          <div class="mb-3 form-check">
            <input type="checkbox" class="form-check-input" id="rememberMe" name="rememberMe">
            <label class="form-check-label" for="rememberMe">Remember Me</label>
          </div>
          <a href="forgot-password" class="ms-auto">Forgot password?</a>
        </div>
        <button type="submit" class="btn btn-primary">Log in</button>
      </div>
    </form:form>
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

<body>
	<jsp:include page="../../header.jsp">
		<jsp:param value="Login" name="HTMLtitle" />
	</jsp:include>
	<div class="container" style="padding-top: 50px;">
		<div class="row">
			<!-- Illustration -->
			<div class="col col-md-7 text-center"
				style="display: flex; justify-content: center;">
				<div
					style="width: 525px; height: 324px; background-image: url(images/login.svg); background-repeat: no-repeat; width: 525px;">
				</div>
			</div>

			<!-- Form -->
			<div class="col col-md-4">
				<div class="shadow-sm p-3 mb-5 bg-white"
					style="width: 400px; min-height: min-content; background-color: yellow; padding: 20px 20px 20px 20px; border-radius: 15px;">
					<div
						class="alert alert-danger alert-dismissible fade show my-3 ${ message == null ? "
						d-none" : "d-block" }" role="alert">
						${ message }
						<button type="button" class="btn-close" data-bs-dismiss="alert"
							aria-label="Close"></button>
					</div>

					<div
						class="alert alert-success alert-dismissible fade show my-3 ${ scMessage == null ? "
						d-none" : "d-block" }" role="alert">
						${ scMessage }
						<button type="button" class="btn-close" data-bs-dismiss="alert"
							aria-label="Close"></button>
					</div>
					<h3>Login</h3>
					<form id="form" class="needs-validation" action="login"
						method="post" novalidate>
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
						<a href="forgot-password">Forgot password?</a>
						<div>
							<button class="btn btn-primary" type="submit"
								style="width: 100%; margin-top: 10px; border-radius: 100px;">Login</button>
							<!-- <input type="submit" value="Sign up" /> -->
						</div>
					</form>
					<hr>
					<div style="display: flex; justify-content: center;">
						<p style="margin-bottom: 0rem;">
							Don't have an account? <a href="registration">Sign up</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script>
        const forms = document.querySelectorAll('form');
        const email = document.getElementById('emailAddress');
        const password = document.getElementById('password');

        const emailRegex = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/

        let fNameBool, lNameBool, emailBool, passwordBool = false;

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
                if (emailBool === false || passwordBool === false) {
                    event.preventDefault()
                    event.stopPropagation()
                }
                form.classList.add('was-validated')
            }, false)
        })
    </script>
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