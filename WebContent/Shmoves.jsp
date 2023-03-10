<%@include file="Connection.jsp" %> 
   <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/sql" prefix = "sql" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Bookmymovie</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css2?family=Oswald:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Mulish:wght@300;400;500;600;700;800;900&display=swap"rel="stylesheet">
    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600&family=Roboto:wght@500;700&display=swap" rel="stylesheet"> 
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
			<!-- 	Session -->
			<c:set var="aname" value="${sessionScope.aname}"/>
		
			<c:if test="${sessionScope.aname==null}">
			<c:redirect url="signin.jsp"/>
			</c:if>
		
			<!--Session -->


    <div class="container-fluid position-relative d-flex p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-dark position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


          <!-- Sidebar Start -->
        <div class="sidebar pe-4 pb-3">
            <nav class="navbar bg-secondary navbar-dark">
                <a href="adhome.jsp" class="navbar-brand mx-4">
                    <h3 class="text-primary"></i>Bookmymovie</h3>
                </a>
                <div class="d-flex align-items-center ms-4 mb-4">
                    <div class="position-relative">
                        <img class="rounded-circle me-lg-2" src="img/mydp.jpg" alt="" style="width: 40px; height: 40px;">
                        <div class="bg-success rounded-circle border border-2 border-white position-absolute end-0 bottom-0 p-1"></div>
                    </div>
                     <div class="ms-3">
                        <h6 class="mb-0">${aname}</h6>
                        <span>Admin</span>
                    </div>
                </div>
           <div class="navbar-nav w-100">
                    <a href="adhome.jsp" class="nav-item nav-link"><i class="fa fa-tachometer-alt me-2"></i>Dashboard</a>
                      
                <div class="nav-item">
                        <a href="addmove.jsp" class="nav-link dropdown-toggle"><i class="fa fa-laptop me-2"></i>Add Movies</a>
                    </div>
                    <div class="nav-item">
                        <a href="Shmoves.jsp?pageid=1" class="nav-link dropdown-toggle active"><i class="fa fa-laptop me-2"></i>All Movies</a>
                    </div>
                     <div class="nav-item">
                        <a href="shmoves.jsp" class="nav-link dropdown-toggle"><i class="fa fa-laptop me-2"></i>Customer</a>
                    </div>
   </div>
            </nav>
        </div>
        <!-- Sidebar End -->


    <!-- Content Start -->
        <div class="content">
            <!-- Navbar Start -->
            <nav class="navbar navbar-expand bg-secondary navbar-dark sticky-top px-4 py-0">
                <a href="adhome.html" class="navbar-brand d-flex d-lg-none me-4">
                    <h2 class="text-primary mb-0"><i class="fa fa-user-edit"></i></h2>
                </a>
                
              
                <div class="navbar-nav align-items-center ms-auto">
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <i class="fa fa-envelope me-lg-2"></i>
                            <span class="d-none d-lg-inline-flex">Message</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <div class="d-flex align-items-center">
                                    <img class="rounded-circle" src="img/user.jpg" alt="" style="width: 40px; height: 40px;">
                                    <div class="ms-2">
                                        <h6 class="fw-normal mb-0">Jhon send you a message</h6>
                                        <small>15 minutes ago</small>
                                    </div>
                                </div>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item text-center">See all message</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                            <i class="fa fa-bell me-lg-2"></i>
                            <span class="d-none d-lg-inline-flex">Notificatin</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">Profile updated</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">New user added</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item">
                                <h6 class="fw-normal mb-0">Password changed</h6>
                                <small>15 minutes ago</small>
                            </a>
                            <hr class="dropdown-divider">
                            <a href="#" class="dropdown-item text-center">See all notifications</a>
                        </div>
                    </div>
                    <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                           <img class="rounded-circle me-lg-2" src="img/mydp.jpg" alt="" style="width: 40px; height: 40px;">
                            <span class="d-none d-lg-inline-flex">${aname}</span>
                        </a>
                        <div class="dropdown-menu dropdown-menu-end bg-secondary border-0 rounded-0 rounded-bottom m-0">
                            <a href="#" class="dropdown-item">My Profile</a>
                            <a href="#" class="dropdown-item">Settings</a>
                            <a href="adlogout.jsp" class="dropdown-item">Log Out</a>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- Navbar End -->
<br><br>
					<c:set var="pageid" value="${param.pageid}"></c:set>
					
					<c:set var="total" value="${2}"></c:set>
					<c:choose>
					<c:when test="${pageid==1}">
					</c:when>
					<c:otherwise>
					<c:set var="pageid" value="${pageid-1}"></c:set>
					<c:set var="pageid" value="${pageid*total+1}"></c:set>
					</c:otherwise>
					</c:choose>
					
				
								<sql:query dataSource = "${snapshot}" var = "result">
									SELECT * from all_movies LIMIT ${pageid-1},${total};
									
									<%--  <sql:param value="${total}"/> --%>
									
									 </sql:query>
									 
									 
									 
									 
					 <c:forEach var = "row" items = "${result.rows}">
				
					 <!-- Movie Description Section Begin -->
					    <section class="anime-details spad">
					        <div class="container">
					            <div class="anime__details__content">
					                <div class="row">
					                    <div class="col-lg-3">
					                        <div >
					        <img  class="anime__details__pic set-bg" src="img/${row.mimage}">
                            <div class="comment"><i class="fa fa-comments"></i> 11</div>
                            <div class="view"><i class="fa fa-eye"></i> 9141</div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="anime__details__text">
                            <div class="anime__details__title">
                            <div style="margin-left:30pc;">
                            <a href="upmovie.jsp?id=${row.id}" class="btn btn-outline-success m-2">Change</a>
                             <a href="delmov.jsp?id=${row.id}" class="btn btn-outline-danger m-2">Delete</a>
                             
                             </div>
                                <h3>${row.mname}</h3>
                                <span>Des</span>
                            </div>
                            
                            <div class="anime__details__rating">
                                <div class="rating">
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star"></i></a>
                                    <a href="#"><i class="fa fa-star-half-o"></i></a>
                                </div>
                                <span>${row.mrev}</span>
                            </div>
                            <p>Des</p>
                            <div class="anime__details__widget">
                                <div class="row">
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                            <li><span>Movie Certificate Type:</span>${row.mcer}</li>
                                            <li><span>Studios:</span> Lerche</li>
                                            <li><span>Date aired:</span>${row.mdate}</li>
                                            <li><span>Time:</span>${row.mtime}</li>
                                            <li><span>Movie Cast:</span>${row.mcast}</li>
                                        </ul>
                                    </div>
                                    <div class="col-lg-6 col-md-6">
                                        <ul>
                                          
                                            <li><span>Rating:</span>${row.mrev}</li>
                                            <li><span>Duration:</span>${row.mtime}</li>
                                            <li><span>Dimenstion:</span>${row.mdim}</li>
                                             <li><span>Ticket:</span>${row.tkprice}</li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                          
                            </div>
                        </div>
                    </div>
                </div>
             
            </div>
        </section>
        </c:forEach>
        
        <!-- Anime Section End -->
          
          
        
 
    <div style="margin-left:25pc;">
  <ul class="pagination pagination-circle pg-blue">
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=1">First</a></li>
    <li class="page-item">
      <a class="page-link" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
    <c:choose>
    <c:when test="${pageid==1}">
    <li class="page-item active"><a class="page-link" href="Shmoves.jsp?pageid=1">1</a></li>
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=2">2</a></li>
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=3">3</a></li>
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=4">4</a></li>
     <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=5">5</a></li>
    </c:when>
     <c:when test="${(pageid-1)==2}">
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=1">1</a></li>
    <li class="page-item active"><a class="page-link" href="Shmoves.jsp?pageid=2">2</a></li>
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=3">3</a></li>
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=4">4</a></li>
     <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=5">5</a></li>
    </c:when>
     <c:when test="${(pageid-2)==3}">
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=1">1</a></li>
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=2">2</a></li>
    <li class="page-item active"><a class="page-link" href="Shmoves.jsp?pageid=3">3</a></li>
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=4">4</a></li>
     <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=5">5</a></li>
    </c:when>
     <c:when test="${(pageid-3)==4}">
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=1">1</a></li>
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=2">2</a></li>
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=3">3</a></li>
    <li class="page-item active"><a class="page-link" href="Shmoves.jsp?pageid=4">4</a></li>
     <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=5">5</a></li>
    </c:when>
     <c:when test="${(pageid-4)==5}">
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=1">1</a></li>
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=2">2</a></li>
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=3">3</a></li>
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=4">4</a></li>
     <li class="page-item active"><a class="page-link" href="Shmoves.jsp?pageid=5">5</a></li>
    </c:when>
    </c:choose>
   
    <li class="page-item">
      <a class="page-link" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
    <li class="page-item"><a class="page-link" href="Shmoves.jsp?pageid=1">Last</a></li>
  </ul>
   </div>

         
          
          
               
            <!-- Footer Start -->
            <div class="container-fluid pt-4 px-4">
                <div class="bg-secondary rounded-top p-4">
                    <div class="row">
                        <div class="col-12 col-sm-6 text-center text-sm-start">
                            &copy; <a href="#">Your Site Name</a>, All Right Reserved. 
                        </div>
                        <div class="col-12 col-sm-6 text-center text-sm-end">
                            <!--/*** This template is free as long as you keep the footer authorâs credit link/attribution link/backlink. If you'd like to use the template without the footer authorâs credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                            Designed By <a href="https://htmlcodex.com">HTML Codex</a>
                            <br>Distributed By: <a href="https://themewagon.com" target="_blank">ThemeWagon</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Footer End -->
        </div>
        <!-- Content End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/chart/chart.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>

</html>