		<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

		<html>
		<head>
			<!-- <title>Login Page</title> -->
			<link rel="stylesheet" href="assets/css/login/login.css" type="text/css" />

			<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,700">
		</head>

		<body onload='document.f.j_username.focus();'>
			
			<c:if test="${not empty error}">
			<div class="errorblock">
				Your login was unsuccessful. <br />
				Caused: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message }
			</div>
		</c:if>
		<div>
			<div class="login-page">
				<div class="form">
					<form class="register-form">
	    <!--   <input type="text" placeholder="name"/>
	      <input type="password" placeholder="password"/>
	      <input type="text" placeholder="email address"/> -->
	      <button>create</button>
	      <p class="message">Already registered? <a href="#">Sign In</a></p>
	  </form>
	  <form action="j_spring_security_check" name="f" method="post" class="login-form">
	  	<input type="text" id="user" name="j_username"  class="form-control" placeholder="username"/>
	  	<input type="password" name="j_password" id="pass" class="form-control"  placeholder="password"/>
	  	<button>login</button> 
	  	<p class="message">Not registered? <a href="#">Create an account</a></p>
	  </form>
	</div>
	</div>
	</div>

	</body>

	<script type="text/javascript">
	$('.message a').click(function(){
	$('form').animate({height: "toggle", opacity: "toggle"}, "slow");
	});
	</script>
	</html>