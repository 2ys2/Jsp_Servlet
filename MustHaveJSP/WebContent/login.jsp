<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Signin Template · Bootstrap v5.3</title>

<!-- Custom styles for this template -->
<link href="login.css" rel="stylesheet">
</head>
<body class="d-flex align-items-center py-4 bg-body-tertiary">

	<main class="form-signin w-100 m-auto">
		<form>
			<img class="mb-4" src="../assets/brand/bootstrap-logo.svg" alt=""
				width="72" height="57">
			<h1 class="h3 mb-3 fw-normal">Please sign in</h1>

			<div class="form-floating">
				<input type="email" class="form-control" id="floatingInput"
					placeholder="name@example.com"> <label for="floatingInput">Email
					address</label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword"
					placeholder="Password"> <label for="floatingPassword">Password</label>
			</div>

			<div class="form-check text-start my-3">
				<input class="form-check-input" type="checkbox" value="remember-me"
					id="flexCheckDefault"> <label class="form-check-label"
					for="flexCheckDefault"> Remember me </label>
			</div>
			<button class="btn btn-primary w-100 py-2" type="submit">Sign
				in</button>
			<p class="mt-5 mb-3 text-body-secondary">&copy; 2017–2023</p>
		</form>
	</main>

</body>
</html>
