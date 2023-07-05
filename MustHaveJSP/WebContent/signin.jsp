<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>sign in</title>

<link href="signin.css" rel="stylesheet">
</head>
<body class="d-flex align-items-center py-4 bg-body-tertiary">

	<main class="form-signin w-100 m-auto">
		<form>
			<div class="form-img">
				<img class="mb-4" src="logo1.png" alt="" width="200" height="150">
			</div>
			<h1 class="h3 mb-3 fw-normal">Please sign in</h1>

			<div class="form-floating">
				<input type="text" class="form-control" id="floatingInput"
					placeholder="Id"> <label for="floatingInput"></label>
			</div>
			<div class="form-floating">
				<input type="password" class="form-control" id="floatingPassword"
					placeholder="Password"> <label for="floatingPassword"></label>
			</div>

			<button class="btn btn-primary w-100 py-2" type="submit">Sign
				in</button>
		</form>
	</main>
</body>
</html>