	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

	<html>
	<head>
		<!-- <title>Login Page</title> -->
		<!-- <link rel="stylesheet" href="assets/css/login/login.css" type="text/css" /> -->

		<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,700">
	</head>

	<body onload='document.f.j_username.focus();'>
		<!-- 	<h3>Login Page</h3> -->
		<c:if test="${not empty error}">
		<div class="errorblock">
			Your login was unsuccessful. <br />
			Caused: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message }
		</div>
	</c:if>

	<!-- <div id="fullscreen_bg" class="fullscreen_bg"/>

	<div class="container">
	<form action="j_spring_security_check" name="f" method="post" class="form-signin">
		<h1 class="form-signin-heading text-muted">Sign In</h1>
			<input type="text" name="j_username" value="" class="form-control" placeholder="Username" required="" autofocus="">
			
			<input type="password" name="j_password" class="form-control" placeholder="Password" required="">
			
			<button class="btn btn-lg btn-primary btn-block" type="submit" name="Submit" value="Submit">
					Sign In
			</button>
			
			 <input type="reset" name="reset" >		
			</form>

			
	</div> -->

	<div id="login">
	<form  action="j_spring_security_check" name="f" method="post" class="form-signin">
				<span class="fontawesome-user"></span>
				<input type="text" id="user" name="j_username" placeholder="Username">

				<span class="fontawesome-lock"></span>
				<input type="password"  name="j_password" id"pass" placeholder="Password">

			<!-- 	<input type="submit" value="Login"> -->
					
			<button class="btn btn-lg btn-primary btn-block" type="submit" name="Submit" value="Submit">
					Sign In
			</button>

	</form>

	</div>
	</body>
	</html>