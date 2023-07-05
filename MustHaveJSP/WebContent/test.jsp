<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="Stylesheet" href="test.css">


<title>CSS TEST</title>
</head>
<body>

	<h1>HELLO</h1>

	<article class="my-3" id="navs">
		<div
			class="bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
			<h3>TABS</h3>
		</div>


		<div class="bd-example-snippet bd-code-snippet">
			<div class="bd-example m-0 border-0">
				<nav>
					<div class="nav nav-tabs mb-3" id="nav-tab" role="tablist">
						<button class="nav-link active" id="nav-home-tab"
							data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
							role="tab" aria-controls="nav-home" aria-selected="true">제목
							1</button>
						<button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
							data-bs-target="#nav-profile" type="button" role="tab"
							aria-controls="nav-profile" aria-selected="false">제목 2</button>
						<button class="nav-link" id="nav-contact-tab" data-bs-toggle="tab"
							data-bs-target="#nav-contact" type="button" role="tab"
							aria-controls="nav-contact" aria-selected="false">제목 3</button>
					</div>
				</nav>
				<div class="tab-content" id="nav-tabContent">
					<div class="tab-pane fade show active" id="nav-home"
						role="tabpanel" aria-labelledby="nav-home-tab">
						<p>내용 1</p>
					</div>
					<div class="tab-pane fade" id="nav-profile" role="tabpanel"
						aria-labelledby="nav-profile-tab">
						<p>내용 2</p>
					</div>
					<div class="tab-pane fade" id="nav-contact" role="tabpanel"
						aria-labelledby="nav-contact-tab">
						<p>내용 3</p>
					</div>
				</div>
			</div>
		</div>
	</article>

	<hr>

	<article class="my-3" id="pagination">
		<div
			class="bd-heading sticky-xl-top align-self-start mt-5 mb-3 mt-xl-0 mb-xl-2">
			<h3>Pagination</h3>
		</div>

		<div class="bd-example-snippet bd-code-snippet">
			<div class="bd-example m-0 border-0">
				<nav aria-label="Another pagination example">
					<ul class="pagination pagination-lg flex-wrap">
						<li class="page-item disabled"><a class="page-link">&laquo;</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">1</a></li>
						<li class="page-item active" aria-current="page"><a
							class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">&raquo;</a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
	</article>



</body>
</html>