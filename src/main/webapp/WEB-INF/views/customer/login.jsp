<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<title>Booking - Multipurpose Online Booking Theme</title>

<!-- Meta Tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="author" content="Webestica.com">
<meta name="description"
	content="Booking - Multipurpose Online Booking Theme">

<!-- Dark mode -->
<script>
		const storedTheme = localStorage.getItem('theme')
 
		const getPreferredTheme = () => {
			if (storedTheme) {
				return storedTheme
			}
			return window.matchMedia('(prefers-color-scheme: dark)').matches ? 'dark' : 'light'
		}

		const setTheme = function (theme) {
			if (theme === 'auto' && window.matchMedia('(prefers-color-scheme: dark)').matches) {
				document.documentElement.setAttribute('data-bs-theme', 'dark')
			} else {
				document.documentElement.setAttribute('data-bs-theme', theme)
			}
		}

		setTheme(getPreferredTheme())

		window.addEventListener('DOMContentLoaded', () => {
		    var el = document.querySelector('.theme-icon-active');
			if(el != 'undefined' && el != null) {
				const showActiveTheme = theme => {
				const activeThemeIcon = document.querySelector('.theme-icon-active use')
				const btnToActive = document.querySelector(`[data-bs-theme-value="${theme}"]`)
				const svgOfActiveBtn = btnToActive.querySelector('.mode-switch use').getAttribute('href')

				document.querySelectorAll('[data-bs-theme-value]').forEach(element => {
					element.classList.remove('active')
				})

				btnToActive.classList.add('active')
				activeThemeIcon.setAttribute('href', svgOfActiveBtn)
			}

			window.matchMedia('(prefers-color-scheme: dark)').addEventListener('change', () => {
				if (storedTheme !== 'light' || storedTheme !== 'dark') {
					setTheme(getPreferredTheme())
				}
			})

			showActiveTheme(getPreferredTheme())

			document.querySelectorAll('[data-bs-theme-value]')
				.forEach(toggle => {
					toggle.addEventListener('click', () => {
						const theme = toggle.getAttribute('data-bs-theme-value')
						localStorage.setItem('theme', theme)
						setTheme(theme)
						showActiveTheme(theme)
					})
				})

			}
		})
		
	</script>

<!-- Favicon -->
<link rel="shortcut icon" href="/images/favicon.ico">

<!-- Google Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@400;500;700&display=swap">

<!-- Plugins CSS -->
<link rel="stylesheet" type="text/css"
	href="/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css"
	href="/vendor/bootstrap-icons/bootstrap-icons.css">

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="/css/style.css">

</head>

<body>


	<!-- Header START -->
	<header class="navbar-light header-sticky">
		<!-- Logo Nav START -->
		<nav class="navbar navbar-expand-xl">
			<div class="container">
				<!-- Logo START -->
				<a class="navbar-brand" href="index.html"> <img
					class="light-mode-item navbar-brand-item"
					src="/images/gojeuneoklogo.png" alt="logo">

				</a>
				<!-- Logo END -->

				<!-- Responsive navbar toggler -->
				<button class="navbar-toggler ms-auto mx-3 p-0 p-sm-2" type="button"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse"
					aria-controls="navbarCollapse" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-animation"> <span></span> <span></span>
						<span></span>
					</span>
				</button>

				<!-- Main navbar START -->
				<div class="navbar-collapse collapse" id="navbarCollapse">
					<ul class="navbar-nav navbar-nav-scroll mx-auto">
						<!-- Nav item Home -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="homeMenu"
							data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">Reservation</a>
							<ul class="dropdown-menu min-w-auto" aria-labelledby="homeMenu">
							<!-- href 경로 수정해주기 : 숙소리스트 페이지 -->
							
								<li><a class="dropdown-item" href="index.html">Our HANOKS</a></li>
							</ul></li>

						

								

						<!-- Nav item Pages -->
						<li class="nav-item dropdown"><a
							class="nav-link dropdown-toggle" href="#" id="pagesMenu"
							data-bs-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false">Contact us</a>
							<ul class="dropdown-menu" aria-labelledby="pagesMenu">
								<!-- href 경로 수정해주기 : 공지사항이랑 문의하기 페이지 -->
								<li><a class="dropdown-item" href="about.html">FAGs</a></li>
								<li><a class="dropdown-item" href="faq.html">Notice</a></li>
								
							</ul></li>


						<!-- Nav item Components -->
						<li class="nav-item"><a class="nav-link"
							href="docs/alerts.html">About</a></li>
					</ul>
				</div>
				<!-- Main navbar END -->

				<!-- Header right side START -->
				<ul class="nav flex-row align-items-center list-unstyled ms-xl-auto">
					<!-- Sign In button  여기도 경로 수정 href : 회원가입 페이지로-->
					<li class="nav-item"><a href="#"
						class="btn btn-sm btn-primary mb-0"><i
							class="fa-solid fa-right-to-bracket me-sm-2"></i><span
							class="d-none d-sm-inline">Sign Up</span></a></li>
				</ul>
				<!-- Header right side END -->

			</div>
		</nav>
		<!-- Logo Nav END -->
	</header>
	<!-- Header END -->



	<!-- **************** MAIN CONTENT START **************** -->
	<main>

		<!-- =======================
Main Content START -->
		<section class="vh-xxl-100">
			<div class="container h-100 d-flex px-0 px-sm-4">
				<div class="row justify-content-center align-items-center m-auto">
					<div class="col-12">
						<div class="bg-mode shadow rounded-3 overflow-hidden">
							<div class="row g-0">
								<!-- Vector Image -->
								<div
									class="col-lg-6 d-flex align-items-center order-2 order-lg-1">
									<div class="p-3 p-lg-5">
										<img src="/images/loginlogo.png" alt="">
									</div>
									<!-- Divider -->
									<div class="vr opacity-1 d-none d-lg-block"></div>
								</div>

								<!-- Information -->
								<div class="col-lg-6 order-1">
									<div class="p-4 p-sm-7">
										<!-- Logo -->
										<a href="index.html"> <img class="h-50px mb-4"
											src="/images/gojeuneoklogo.png" alt="logo">
										</a>
										<!-- Title -->
										<h1 class="mb-2 h3">Welcome back customer!</h1>
										<p class="mb-0">
											New here?<a href="sign-up.html"> Create an account</a>
										</p>

										<!-- Form START -->
										<form class="mt-4 text-start" action="login.do" method="post">
											<!-- ID -->
											<div class="mb-3">
												<label class="form-label">Enter id</label> <input
													type="text" name="customer_id" class="form-control">
											</div>
											<!-- Password -->
											<div class="mb-3 position-relative">
												<label class="form-label">Enter password</label> <input
													class="form-control fakepassword" type="password"
													name="customer_pwd"> <span
													class="position-absolute top-50 end-0 translate-middle-y p-0 mt-3">
													<i
													class="fakepasswordicon fas fa-eye-slash cursor-pointer p-2"></i>
												</span>
											</div>
											<!-- Remember me -->
											<div class="mb-3 d-sm-flex justify-content-between">
												<div>
													<input type="checkbox" class="form-check-input"
														id="rememberCheck"> <label
														class="form-check-label" for="rememberCheck">Remember
														me?</label>
												</div>
												<a href="forgot-password.html">Forgot password?</a>
											</div>
											<!-- Button -->
											<div>
												<button type="submit" value="로그인"
													class="btn btn-primary w-100 mb-0">Login</button>
											</div>

											<!-- Divider -->
											<div class="position-relative my-4">
												<hr>
												<p
													class="small bg-mode position-absolute top-50 start-50 translate-middle px-2">Or
													sign in with</p>
											</div>

											<!-- Google and facebook button -->
											<div class="vstack gap-3">
												<a href="#" class="btn btn-light mb-0"><i
													class="fab fa-fw fa-google text-google-icon me-2"></i>Sign
													in with Google</a> <a href="#" class="btn btn-light mb-0"><i
													class="fab fa-fw fa-facebook-f text-facebook me-2"></i>Sign
													in with Facebook</a>
											</div>

											<!-- Copyright -->
											<div class="text-primary-hover text-body mt-3 text-center">
												Copyrights ©2024 Booking. Build by <a
													href="https://www.webestica.com/" class="text-body">Webestica</a>.
											</div>
										</form>
										<!-- Form END -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- =======================
Main Content END -->

	</main>
	<!-- **************** MAIN CONTENT END **************** -->

	<!-- Back to top -->
	<div class="back-top"></div>

	<!-- Bootstrap JS -->
	<script src="/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>

	<!-- ThemeFunctions -->
	<script src="js/functions.js"></script>

</body>
</html>
