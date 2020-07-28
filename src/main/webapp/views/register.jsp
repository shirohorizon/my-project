<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
</head>
<body class="bg-primary">
	<div id="layoutAuthentication_content">
		<main>
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-7">
						<div class="card shadow-lg border-0 rounded-lg mt-5">
							<div class="card-header">
								<h3 class="text-center font-weight-light my-4">Create
									Account</h3>
							</div>
							<div class="card-body">
								<c:if test="${not empty message}">
									<div class="alert alert-${alert}">${message}</div>
								</c:if>
								<form action="<c:url value='/login?action=register'/>"
									method="post">
									<div class="form-group">
										<label class="small mb-1" for="inputFullname">Fullname</label><input
											class="form-control py-4" id="inputFullname" name="fullName"
											type="text" aria-describedby="emailHelp"
											placeholder="Enter Your Name" />
									</div>
									<div class="form-group">
										<label class="small mb-1" for="inputEmailAddress">Username</label><input
											class="form-control py-4" id="inputEmailAddress"
											name="userName" type="text" aria-describedby="emailHelp"
											placeholder="Enter Username" />
									</div>
									<div class="form-row">
										<div class="col-md-6">
											<div class="form-group">
												<label class="small mb-1" for="inputPassword">Password</label><input
													class="form-control py-4" id="inputPassword"
													name="password" type="password"
													placeholder="Enter password" />
											</div>
										</div>
										<div class="col-md-6">
											<div class="form-group">
												<label class="small mb-1" for="inputConfirmPassword">Confirm
													Password</label><input class="form-control py-4"
													id="inputConfirmPassword" type="password"
													placeholder="Confirm password" />
											</div>
										</div>
									</div>
									<div class="form-group mt-4 mb-0">
										<button class="btn btn-primary btn-block" type="submit">Create
											Account</button>
									</div>
								</form>
							</div>
							<div class="card-footer text-center">
								<div class="small">
									<a href='<c:url value="/login?action=login"/>'>Have an
										account? Go to login</a>
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