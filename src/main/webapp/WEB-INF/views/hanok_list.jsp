<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>hanok_list</title>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- Google Font -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:wght@400;500;700&family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

<!-- Plugins CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/vendor/font-awesome/css/all.min.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/vendor/bootstrap-icons/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/vendor/flatpickr/css/flatpickr.min.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/vendor/choices/css/choices.min.css">
<link rel="stylesheet" type="text/css" href="/resources/assets/vendor/nouislider/nouislider.css">

<!-- Theme CSS -->
<link rel="stylesheet" type="text/css" href="/resources/assets/css/style.css">

	<style>
	    #sep {
	        margin-bottom: 20px;
	    }
	</style>
	<script>
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
</head>
<body>
<!--헤더-->
    <div id="sep">
        <header></header>
    </div>

    <!--검색-->
    <div id="sep">
    	<%@ include file="/WEB-INF/views/include/hanok_search.jsp" %>
    </div>

    <!--한옥-->
    <div id="sep">
        <section class="pt-0">
            <div class="container">
                <div class="row g-4">
                
                    <c:forEach var="customerVO" items="${map.list }">    
                    <!-- Card item 1 START -->
                    <div class="col-md-6 col-xl-4">
                    <div class="card card-hover-shadow pb-0 h-100">
                        <!-- Overlay item -->
                        <div class="position-relative">
                            <!-- Image -->
                            <img src="/resources/assets/images/category/tour/4by3/05.jpg" class="card-img-top" alt="Card image">
                        </div>
                        <!-- Image -->

                        <!-- Card body START -->
                        <div class="card-body px-3">
                            <!-- Title -->
                            <h5 class="card-title mb-0"><a href="tour-detail.html" class="stretched-link">Meeru Island Resort (Without Flight)</a></h5>
                            <span class="small"><i class="far fa-calendar-alt me-2"></i>April 12-17</span>
                        </div>
                        <!-- Card body END -->

                        <!-- Card footer START-->
                        <div class="card-footer pt-0">
                            <!-- Price and Button -->
                            <div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap">
                                <!-- Price -->
                                <div class="hstack gap-2">
                                    <h5 class="fw-normal text-success mb-0">$800</h5>
                                    <small>/per person</small>
                                </div>
                                <!-- Button -->
                                <div class="mt-2 mt-sm-0">
                                    <a href="#" class="btn btn-sm btn-primary mb-0">View Details</a>    
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <!-- Card item END -->
                </c:forEach>

                    <!-- Card item 2 START -->
                    <div class="col-md-6 col-xl-4">
                        <div class="card card-hover-shadow pb-0 h-100">
                            <!-- Overlay item -->
                            <div class="position-relative">
                                <!-- Image -->
                                <img src="/resources/assets/images/category/tour/4by3/05.jpg" class="card-img-top" alt="Card image">
                            </div>
                            <!-- Image -->
        
                            <!-- Card body START -->
                            <div class="card-body px-3">
                                <!-- Title -->
                                <h5 class="card-title mb-0"><a href="tour-detail.html" class="stretched-link">Meeru Island Resort (Without Flight)</a></h5>
                                <span class="small"><i class="far fa-calendar-alt me-2"></i>April 12-17</span>
                            </div>
                            <!-- Card body END -->
        
                            <!-- Card footer START-->
                            <div class="card-footer pt-0">
                                <!-- Price and Button -->
                                <div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap">
                                    <!-- Price -->
                                    <div class="hstack gap-2">
                                        <h5 class="fw-normal text-success mb-0">$800</h5>
                                        <small>/per person</small>
                                    </div>
                                    <!-- Button -->
                                    <div class="mt-2 mt-sm-0">
                                        <a href="#" class="btn btn-sm btn-primary mb-0">View Details</a>    
                                    </div>
                                </div>
                            </div>
        
                        </div>
                    </div>
                    <!-- Card item END -->

                    <!-- Card item 3 START -->
                    <div class="col-md-6 col-xl-4">
                        <div class="card card-hover-shadow pb-0 h-100">
                            <!-- Overlay item -->
                            <div class="position-relative">
                                <!-- Image -->
                                <img src="/resources/assets/images/category/tour/4by3/05.jpg" class="card-img-top" alt="Card image">
                            </div>
                            <!-- Image -->
        
                            <!-- Card body START -->
                            <div class="card-body px-3">
                                <!-- Title -->
                                <h5 class="card-title mb-0"><a href="tour-detail.html" class="stretched-link">Meeru Island Resort (Without Flight)</a></h5>
                                <span class="small"><i class="far fa-calendar-alt me-2"></i>April 12-17</span>
                            </div>
                            <!-- Card body END -->
        
                            <!-- Card footer START-->
                            <div class="card-footer pt-0">
                                <!-- Price and Button -->
                                <div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap">
                                    <!-- Price -->
                                    <div class="hstack gap-2">
                                        <h5 class="fw-normal text-success mb-0">$800</h5>
                                        <small>/per person</small>
                                    </div>
                                    <!-- Button -->
                                    <div class="mt-2 mt-sm-0">
                                        <a href="#" class="btn btn-sm btn-primary mb-0">View Details</a>    
                                    </div>
                                </div>
                            </div>
        
                        </div>
                    </div>
                    <!-- Card item END -->

                    <!-- Card item 4 START -->
                    <div class="col-md-6 col-xl-4">
                        <div class="card card-hover-shadow pb-0 h-100">
                            <!-- Overlay item -->
                            <div class="position-relative">
                                <!-- Image -->
                                <img src="/resources/assets/images/category/tour/4by3/05.jpg" class="card-img-top" alt="Card image">
                            </div>
                            <!-- Image -->
        
                            <!-- Card body START -->
                            <div class="card-body px-3">
                                <!-- Title -->
                                <h5 class="card-title mb-0"><a href="tour-detail.html" class="stretched-link">Meeru Island Resort (Without Flight)</a></h5>
                                <span class="small"><i class="far fa-calendar-alt me-2"></i>April 12-17</span>
                            </div>
                            <!-- Card body END -->
        
                            <!-- Card footer START-->
                            <div class="card-footer pt-0">
                                <!-- Price and Button -->
                                <div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap">
                                    <!-- Price -->
                                    <div class="hstack gap-2">
                                        <h5 class="fw-normal text-success mb-0">$800</h5>
                                        <small>/per person</small>
                                    </div>
                                    <!-- Button -->
                                    <div class="mt-2 mt-sm-0">
                                        <a href="#" class="btn btn-sm btn-primary mb-0">View Details</a>    
                                    </div>
                                </div>
                            </div>
        
                        </div>
                    </div>
                    <!-- Card item END -->

                    <!-- Card item 5 START -->
                    <div class="col-md-6 col-xl-4">
                        <div class="card card-hover-shadow pb-0 h-100">
                            <!-- Overlay item -->
                            <div class="position-relative">
                                <!-- Image -->
                                <img src="/resources/assets/images/category/tour/4by3/05.jpg" class="card-img-top" alt="Card image">
                            </div>
                            <!-- Image -->
        
                            <!-- Card body START -->
                            <div class="card-body px-3">
                                <!-- Title -->
                                <h5 class="card-title mb-0"><a href="tour-detail.html" class="stretched-link">Meeru Island Resort (Without Flight)</a></h5>
                                <span class="small"><i class="far fa-calendar-alt me-2"></i>April 12-17</span>
                            </div>
                            <!-- Card body END -->
        
                            <!-- Card footer START-->
                            <div class="card-footer pt-0">
                                <!-- Price and Button -->
                                <div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap">
                                    <!-- Price -->
                                    <div class="hstack gap-2">
                                        <h5 class="fw-normal text-success mb-0">$800</h5>
                                        <small>/per person</small>
                                    </div>
                                    <!-- Button -->
                                    <div class="mt-2 mt-sm-0">
                                        <a href="#" class="btn btn-sm btn-primary mb-0">View Details</a>    
                                    </div>
                                </div>
                            </div>
        
                        </div>
                    </div>
                    <!-- Card item END -->

                    <!-- Card item 6 START -->
                    <div class="col-md-6 col-xl-4">
                        <div class="card card-hover-shadow pb-0 h-100">
                            <!-- Overlay item -->
                            <div class="position-relative">
                                <!-- Image -->
                                <img src="/resources/assets/images/category/tour/4by3/05.jpg" class="card-img-top" alt="Card image">
                            </div>
                            <!-- Image -->
        
                            <!-- Card body START -->
                            <div class="card-body px-3">
                                <!-- Title -->
                                <h5 class="card-title mb-0"><a href="tour-detail.html" class="stretched-link">Meeru Island Resort (Without Flight)</a></h5>
                                <span class="small"><i class="far fa-calendar-alt me-2"></i>April 12-17</span>
                            </div>
                            <!-- Card body END -->
        
                            <!-- Card footer START-->
                            <div class="card-footer pt-0">
                                <!-- Price and Button -->
                                <div class="d-sm-flex justify-content-sm-between align-items-center flex-wrap">
                                    <!-- Price -->
                                    <div class="hstack gap-2">
                                        <h5 class="fw-normal text-success mb-0">$800</h5>
                                        <small>/per person</small>
                                    </div>
                                    <!-- Button -->
                                    <div class="mt-2 mt-sm-0">
                                        <a href="#" class="btn btn-sm btn-primary mb-0">View Details</a>    
                                    </div>
                                </div>
                            </div>
        
                        </div>
                    </div>
                    <!-- Card item END -->

                </div> <!-- Row END -->

                <!-- Pagination -->
                <div class="row">
                    <div class="col-12">
                        <nav class="mt-4 d-flex justify-content-center" aria-label="navigation">
                            <ul class="pagination pagination-primary-soft d-inline-block d-md-flex rounded mb-0">
                                <li class="page-item mb-0"><a class="page-link" href="#" tabindex="-1"><i class="fa-solid fa-angle-left"></i></a></li>
                                <li class="page-item mb-0"><a class="page-link" href="#">1</a></li>
                                <li class="page-item mb-0 active"><a class="page-link" href="#">2</a></li>
                                <li class="page-item mb-0"><a class="page-link" href="#">..</a></li>
                                <li class="page-item mb-0"><a class="page-link" href="#">6</a></li>
                                <li class="page-item mb-0"><a class="page-link" href="#"><i class="fa-solid fa-angle-right"></i></a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </selection>
    </div>

    <!--footer-->
    <div id="sep">
		<%@ include file="/WEB-INF/views/include/footer.jsp" %>
    </div>
</body>
</html>