<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Register User</title>
	<!-- Custom fonts for this template-->
 	<link href="resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

  	<!-- Custom styles for this template-->
  	<link href="resources/css/sb-admin-2.min.css" rel="stylesheet">
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="./Superadmin_page.jsp">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">EXAM app</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="./registeruser.jsp">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Register user</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      
      
      <li class="nav-item">
        <a class="nav-link" href="Viewregisteruser">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>View Register user</span></a>
      </li> 
          
    </ul>
    <!-- End of Sidebar -->
    
    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Search -->
          <form  class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
            <div class="input-group">
              <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
              <div class="input-group-append">
                <button class="btn btn-primary" type="button">
                  <i class="fas fa-search fa-sm"></i>
                </button>
              </div>
            </div>
          </form>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <!-- Dropdown - Messages -->
              <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in" aria-labelledby="searchDropdown">
                <form class="form-inline mr-auto w-100 navbar-search">
                  <div class="input-group">
                    <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..." aria-label="Search" aria-describedby="basic-addon2">
                    <div class="input-group-append">
                      <button class="btn btn-primary" type="button">
                        <i class="fas fa-search fa-sm"></i>
                      </button>
                    </div>
                  </div>
                </form>
              </div>
            </li>
 
            <div class="topbar-divider d-none d-sm-block"></div>

            <!-- Nav Item - User Information -->
            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Admin</span>
                <img class="img-profile rounded-circle" src="https://source.unsplash.com/QAB-WJcbgJk/60x60">
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="#">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                  Settings
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Register user</h1>
          <div class="mb-4" style="color: red;">
          	<%
			 if(request.getAttribute("result") !=null) {
				String Message=(String) request.getAttribute("result");
				out.println(Message);
			} 
			%>
          </div>

          <!-- Content Row -->
          <div class="row">
            <div class="col-xl-8 col-lg-7">
                  <!-- Area Chart -->
	              <div class="card shadow mb-4">
	                <div class="card-header py-3" style="background:#4e73df;color:white"></div>
	                <div class="card-body">
		              <form id="registeruserform" action="Registeruser" method="post" class="form-horizontal">
		              <fieldset>
		                <!-- Form Name -->
		                
		                <div class="form-group">
		                  <label class="col-md-4 control-label" for="Fname">First name</label>  
		                  <div class="col-md-10">
		                  <input id="Fname" name="Fname" type="text"  class="form-control form-control-lg input-md" required>
		                  </div>
		                </div>
		                
		                <div class="form-group">
		                  <label class="col-md-4 control-label" for="Lname">Last name</label>  
		                  <div class="col-md-10">
		                  <input id="Lname" name="Lname" type="text"  class="form-control form-control-lg input-md" >
		                  </div>
		                </div>
		            	
		            	<div class="form-group">
		                  <label class="col-md-4 control-label" for="Email">Email</label>  
		                  <div class="col-md-10">
		                  <input id="Email" name="Email" type="email"  class="form-control form-control-lg input-md" required>
		                  </div>
		                </div>
		                
		                <div class="form-group">
		                  <label class="col-md-4 control-label" for="Mobile">Mobile number</label>  
		                  <div class="col-md-10">
		                  <input id="Mobile" name="Mobile" type="tel" placeholder="+91-" pattern="[7-9]{1}[0-9]{9}" class="form-control form-control-lg input-md" required>
		                  </div>
		                </div>
		                
		                <div class="form-group">
		                  <label class="col-md-4 control-label" for="Role">Role</label>
		                  <div class="col-md-10">
		                    <select id="Role" name="Role" class="form-control form-control-lg">
		                      <option value="0" selected="true">Select Role</option>
		                      <option value="1">Admin</option>
		                      <option value="2">Candidate</option>
		                      <option value="3">Super Admin</option>
		                    </select>
		                  </div>
	            	 	</div>
		            	
		                <div class="form-group">
		                  <div class="col-md-4">&nbsp;</div>
		                  <div class="col-md-4">
		                    <button class="btn-lg btn-primary" id="submit" type="submit" value="submit">submit</button>
		                    <button type="reset" class="btn-lg btn-primary" value="reset">reset</button> 
		                  </div>
		                </div>
		              </fieldset>
		            </form>
		            </div>
	            </div>
            </div>


            <!-- Donut Chart -->
            <div class="col-xl-4 col-lg-5">
              <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3" style="background:#4e73df;color:white">
                  <h6 class="m-0 font-weight-bold">Existing sections</h6>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                  <ul>
                    <li>JAVA</li>
                    <li>OS</li>

                  </ul>
                </div>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; Your Website 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">�</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
          <a class="btn btn-primary" href="./">Logout</a>
        </div>
        
      </div>
    </div>
  </div>

  <!-- Bootstrap core JavaScript-->
  <script src="resources/vendor/jquery/jquery.min.js"></script>
  <script src="resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="resources/vendor/jquery-easing/jquery.easing.min.js"></script>

  <!-- Custom scripts for all pages-->
  <script src="resources/js/sb-admin-2.min.js"></script>
  
</body>

</html>