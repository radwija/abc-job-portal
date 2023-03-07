<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<footer
	class="py-2 px-4 mt-5 mt-auto shadow-sm bg-white 
	<%=request.getParameter("withFooter") == null ? "" : "d-none"%>
"
	style="height: 50px; width: 100%;">

	<div class="row d-flex text-center" style="align-items: center; justify-content: center">
		<p>Copyright © 2023 | ABC Jobs</p>
	</div>

</footer>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<script src="js/validation.js"></script>
<script src="js/bootstrapEnable.js"></script>
</body>
</html>
