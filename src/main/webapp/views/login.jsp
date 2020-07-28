<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Đăng nhập</title>
<link href="<c:url value='/common/validateForm.css'/>" rel="stylesheet">
</head>
<body class="bg-primary">
	<div id="layoutAuthentication_content">
		<main>
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-5">
						<div class="card shadow-lg border-0 rounded-lg mt-5">
							<div class="card-header">
								<h3 class="text-center font-weight-light my-4">Login</h3>
							</div>
							<div class="card-body">
								<c:if test="${not empty message}">
									<div class="alert alert-${alert}">${message}</div>
								</c:if>
								<form action="<c:url value='/login?action=login'/>"
									method="post">
									<div class="form-group">
										<label class="small mb-1" for="inputUsername">Username</label><input
											class="form-control py-4" id="inputEmailAddress"
											name="userName" type="text" placeholder="Enter Username" />
										<span id="email_err"></span>
									</div>
									<div class="form-group">
										<label class="small mb-1" for="inputPassword">Password</label><input
											class="form-control py-4" id="inputPassword" name="password"
											type="password" placeholder="Enter password" />
									</div>
									<div class="form-group">
										<div class="custom-control custom-checkbox">
											<input class="custom-control-input"
												id="rememberPasswordCheck" type="checkbox" /><label
												class="custom-control-label" for="rememberPasswordCheck">Remember
												password</label>
										</div>
									</div>
									<div
										class="form-group d-flex align-items-center justify-content-between mt-4 mb-0">
										<a class="small" href="password.html">Forgot Password?</a>
										<button class="btn btn-primary" type="submit">Login</button>
									</div>
								</form>
							</div>
							<div class="card-footer text-center">
								<div class="small">
									<a href='<c:url value="/login?action=register"/>'>Need an
										account? Sign up!</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</div>

</body>
</html>