<jsp:include page="../../header.jsp">
    <jsp:param value="Thank You !" name="HTMLtitle" />
</jsp:include>
<div class="container text-center">
    <h1>Thank You !</h1>
    <p>Thank you <span class="fw-bold">${email}</span> for your registration. <br> Your begining journey is about to start!</p>
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#ver">
	  Get Confirmation Link
	</button>
</div>
<!-- Modal -->
<div class="modal fade text-center" id="ver" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
      	<i class='bx bxs-envelope fs-2'></i>
      	<h2>Successful</h2>
      	<p>The link has been sent it to your email</p>
       	<a href="verified" class="btn btn-secondary">Continue</a>
      </div>
    </div>
  </div>
</div>

<jsp:include page="../../footer.jsp"></jsp:include>