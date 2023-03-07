<%-- <jsp:include page="../header.jsp"></jsp:include>
<div class="d-flex align-items-center position-relative" style="height: 90vh; overflow: hidden;">
  	<video autoplay muted loop class="position-absolute" style="z-index: -1; min-width: 100%">
  		<source src="video/earth.mp4" type="video/mp4">
	</video>
  <div class="d-flex flex-column justify-content-center container">
    <h1 class="text-white" style="font-size: 3.4em; font-weight: 700;">Together we can build great things</h1>
    <p class="fs-3 text-white">A place where developers from all over the world, you and your capability make the world more great </p>
    <div class="d-flex align-items-start gap-4">
      <form action="registration" method="GET" class="input-group pe-4 border-end w-50">
        <input type="email" class="form-control" placeholder="Email Address" name="email">
        <button type="submit" class="btn btn-primary input-group-text">Sign up for ABC Jobs</button>
      </form>
      <a href="login" class="btn btn-outline-primary w-25 text-white fw-bold">I have an account</a>
    </div>
  </div>
</div>

<div class="container my-4 snap-container">
   <div class="d-flex flex-column justify-content-center mb-5" style="height: 25vh;">
    <small class="fs-3">Developer from all companies and organizations</small>
    <div class="d-flex justify-content-center align-items-center gap-5 mt-3" style="filter: grayscale(1);">
      <img src="images/google.png" alt="Google" height="60px"></img>
      <img src="images/github.jpg" alt="Github" height="100px"></img>
      <img src="images/stripe.png" alt="Stripe" height="90px"></img>
      <img src="images/meta.jpg" alt="Meta" height="120px"></img>
    </div>
  </div>

  <div class="d-flex align-items-center gap-4 my-5 snap-child">
    <div class="align-self-stretch position-relative border">
      <span class="position-absolute bg-white py-2" style="top: 50%; left: 50%; transform: translate(-50%, -50%);">
      	<i class='bx bx-lock-alt fs-4'></i>
      </span>
    </div>
    <div>
      <p class="fs-3 fw-semibold">Keep it private</p>
      <h2 class="fs-1 fw-bold">Create private chats that only you know</h2>
    </div>
    <img src="images/chat.svg" width="450px" class="ms-auto">
  </div>

  <div class="d-flex align-items-center gap-4 my-5 snap-child">
    <div class="align-self-stretch position-relative border">
      <span class="position-absolute bg-white py-2" style="top: 50%; left: 50%; transform: translate(-50%, -50%);">
      	<i class='bx bx-git-repo-forked fs-4'></i>
      </span>
    </div>
    <div>
      <p class="fs-3 fw-semibold">Connect</p>
      <h2 class="fs-1 fw-bold">Where connection is easy</h2>
    </div>
    <img src="images/connect.svg" width="450px" class="ms-auto">
  </div>

  <div class="d-flex align-items-center gap-4 my-5 snap-child">
    <div class="align-self-stretch position-relative border">
      <span class="position-absolute bg-white py-2" style="top: 50%; left: 50%; transform: translate(-50%, -50%);">
      	<i class='bx bx-group fs-4'></i>
      </span>
    </div>
    <div>
      <p class="fs-3 fw-semibold">Reputation</p>
      <h2 class="fs-1 fw-bold">From unknown to known</h2>
    </div>
    <img src="images/famous.svg" width="450px" class="ms-auto">
  </div>
</div>

<div class="d-flex flex-column align-items-center py-5 mt-5">
  <h2>Ready to start your journey?</h2>
  <a href="registration" class="btn btn-primary">Sign up now</a>
</div>

<jsp:include page="../footer.jsp"></jsp:include> --%>

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