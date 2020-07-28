<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<div id="layoutSidenav_nav">
	<nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
		<div class="sb-sidenav-menu">
			<div class="nav">
				<div class="sb-sidenav-menu-heading">
					${USERMODEL.role.name}
				</div>
				<a class="nav-link" href="#">
					<div class="sb-nav-link-icon">
						<i class="fas fa-tachometer-alt"></i>
					</div>
					Dashboard
				</a>
				<div class="sb-sidenav-menu-heading">Manager</div>
				<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseLayouts"
					aria-expanded="false" aria-controls="collapseLayouts">
					<div class="sb-nav-link-icon">
						<i class="fas fa-book-open"></i>
					</div>
					News
					<div class="sb-sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="collapseLayouts" aria-labelledby="headingOne" data-parent="#sidenavAccordion">
					<nav class="sb-sidenav-menu-nested nav">
						<a class="nav-link" href="<c:url value='/admin-news?type=list'/>">
							<div class="sb-nav-link-icon">
								<i class="fas fa-list"></i>
							</div>
							News list
						</a>
						<a class="nav-link" href="<c:url value='/admin-category'/>">
							<div class="sb-nav-link-icon">
								<i class="fas fa-list"></i>
							</div>
							Category list
						</a>
						<a class="nav-link" href="layout-static.html">
							<div class="sb-nav-link-icon">
								<i class="fas fa-comments"></i>
							</div>
							Comment
						</a>
						<a class="nav-link" href="layout-static.html">
							Static Navigation
						</a>
						<a class="nav-link" href="layout-sidenav-light.html">
							Light Sidenav
						</a>
					</nav>
				</div>
				<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
					aria-expanded="false" aria-controls="collapsePages">
					<div class="sb-nav-link-icon">
						<i class="fas fa-users-cog"></i>
					</div>
					Users
					<div class="sb-sidenav-collapse-arrow">
						<i class="fas fa-angle-down"></i>
					</div>
				</a>
				<div class="collapse" id="collapsePages" aria-labelledby="headingTwo" data-parent="#sidenavAccordion">
					<nav class="sb-sidenav-menu-nested nav accordion" id="sidenavAccordionPages">
						<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseAuth"
							aria-expanded="false" aria-controls="pagesCollapseAuth">
							<div class="sb-nav-link-icon">
								<i class="fas fa-list"></i>
							</div>
							User List
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="pagesCollapseAuth" aria-labelledby="headingOne"
							data-parent="#sidenavAccordionPages">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="login.html">
									Login
								</a>
								<a class="nav-link" href="register.html">
									Register
								</a>
								<a class="nav-link" href="password.html">
									Forgot Password
								</a>
							</nav>
						</div>
						<a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#pagesCollapseError"
							aria-expanded="false" aria-controls="pagesCollapseError">
							<div class="sb-nav-link-icon">
								<i class="fas fa-list"></i>
							</div>
							Role
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="pagesCollapseError" aria-labelledby="headingOne"
							data-parent="#sidenavAccordionPages">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="401.html">
									401 Page
								</a>
								<a class="nav-link" href="404.html">
									404 Page
								</a>
								<a class="nav-link" href="500.html">
									500 Page
								</a>
							</nav>
						</div>
					</nav>
				</div>
				<div class="sb-sidenav-menu-heading">Addons</div>
				<a class="nav-link" href="charts.html">
					<div class="sb-nav-link-icon"><i class="fas fa-chart-area"></i></div>
					Charts
				</a><a class="nav-link" href="tables.html">
					<div class="sb-nav-link-icon"><i class="fas fa-table"></i></div>
					Tables
				</a>
			</div>
		</div>
		<div class="sb-sidenav-footer">
			<div class="small">Logged in as:</div>
			Start Bootstrap
		</div>
	</nav>
</div>