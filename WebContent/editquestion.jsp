<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>test page viewquestion</title>

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
      <a class="sidebar-brand d-flex align-items-center justify-content-center" href="./Admin_page.jsp">
        <div class="sidebar-brand-icon rotate-n-15">
          <i class="fas fa-laugh-wink"></i>
        </div>
        <div class="sidebar-brand-text mx-3">EXAM app</div>
      </a>

      <!-- Divider -->
      <hr class="sidebar-divider my-0">

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
        <a class="nav-link" href="Scheduleexam">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Schedule exam</span></a>
      </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Heading -->
      <div class="sidebar-heading">
        Exam
      </div>

      <li class="nav-item">
        <a class="nav-link" href="viewexam">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>View Scheduled exams</span></a>
      </li>
       <li class="nav-item">
        <a class="nav-link" href="./addsection.jsp">
          <i class="fas fa-fw fa-tachometer-alt"></i>
          <span>Add sections</span></a>
      </li>
      

      <!-- Nav Item - Pages Collapse Menu -->
      <li class="nav-item">
        <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
          <i class="fas fa-fw fa-cog"></i>
          <span>Question paper</span>
        </a>
        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
          <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Question:</h6>
            <a class="collapse-item" href="Addquestion1">ADD</a>
            <a class="collapse-item" href="Viewquestions">View</a>
          </div>
        </div>
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
          <form class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
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
          <h1 class="h3 mb-2 text-gray-800">View Questions</h1>
          
       

          <!- DataTales Example ->
          <div class="card shadow mb-4">
            <div class="card-header py-3" style="background-color: #4e73df"></div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>Section</th>
                      <th>Question</th>
                      <th>Option 1</th>
                      <th>Option 2</th>
                      <th>Option 3</th>
                      <th>Option 4</th>
                      <th>Remark</th>
                      <th>Modify</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Section</th>
                      <th>Question</th>
                      <th>Option 1</th>
                      <th>Option 2</th>
                      <th>Option 3</th>
                      <th>Option 4</th>
                      <th>Remark</th>
                      <th>Modify</th>
                    </tr>
                  </tfoot>
                  <tbody>              	
				    <%
				    	Map<Integer, List<String>> userMap = request.getAttribute("userMap") != null ? (Map<Integer, List<String>>)request.getAttribute("userMap") : null;
				    	
				    	if(userMap != null) {
				    		for(Map.Entry<Integer, List<String>> entry : userMap.entrySet()) {
				    	%>
				    		<tr>
				    			<input type="hidden" name="quesId" value="<%=entry.getKey() %>"/>
				    			<% 
				    				for(String data : entry.getValue()) {
				    			%>	
				    			
				    			<td><%=data%></td>
				    								
				    			<%	}
				    			%>
				    			<td><a href="Editquestion?questionId=<%=entry.getKey()%>">edit</a></td>
				    		</tr>	
				    	<%	}
				    	%>
				    		
				    	<%} 
				    	else {
				    	%> 
				    	<tr><td colspan="10">No record found....</td></tr>	
					   
				  <%  
				  }
				    %>
                      <!-- <td>No record</td>
                      <td>No record</td>
                      <td>No record</td>
                      <td>No record</td>
                      <td>No record</td>
                      <td>No record</td>
                      <td>No record</td>
                      <td><a href="#" data-toggle="modal" data-target="#questioneditmodal">No record</a></td> -->
                  
                  </tbody>
                </table>
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
  
  <div class="modal" id="questioneditmodal"tabindex="-1" role="dialog">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title">Edit Question</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form>
          <div class="form-group">
            <label>Question</label>  
            <div>
              <input name="question" type="text" placeholder="type question here" class="form-control input-md" required> 
            </div>
          </div>
                
          <!-- Multiple Radios (inline) -->
          <div class="form-group">
            <label>question type</label>
            <div> 
              <label class="radio-inline" for="single">
              <input type="radio" name="Qtype" id="single" value="1" checked="checked">
                      single choice
              </label> 
              <label class="radio-inline" for="multi">
              <input type="radio" name="Qtype" id="multi" value="2">
                      multiple choice
              </label>
            </div>
          </div>
                
          <!-- Text input-->
          <div class="form-group">
            <label>answer 1</label>  
            <div>
              <input  name="answer 1" type="text" placeholder="type answer 1" class="form-control input-md" required>  
            </div>
          </div>
                
          <!-- Text input-->
          <div class="form-group">
            <label>answer 2</label>  
            <div>
              <input  name="answer 2" type="text" placeholder="type answer 2" class="form-control input-md" required> 
            </div>
          </div>
                
          <!-- Text input-->
          <div class="form-group">
            <label>answer 3</label>  
            <div>
              <input  name="textinput" type="text" placeholder="type answer 3" class="form-control input-md" required>
            </div>
          </div>
          
          <div class="form-group">
            <label>answer 4</label>  
            <div>
              <input  name="answer 4" type="text" placeholder="type answer 4" class="form-control input-md" required>
            </div>
          </div>
                
          <div class="form-group">
            <label >correct answer</label>
            <div id="selectanswer"> 
              <label class="radio-inline checkbox-inline" for="radios-0">
              <input type="radio" name="radios" id="radios-0" value="1" checked="checked">
                      1
              </label> 
              <label class="radio-inline checkbox-inline" for="radios-1">
              <input type="radio" name="radios" id="radios-1" value="2">
                      2
              </label> 
              <label class="radio-inline checkbox-inline" for="radios-2">
              <input type="radio" name="radios" id="radios-2" value="3">
                      3
              </label> 
              <label class="radio-inline checkbox-inline" for="radios-3">
              <input type="radio" name="radios" id="radios-3" value="4">
                      4
              </label> 
             </div>
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary">Save changes</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
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
  <script src="resources/js/addquestion.js"></script>
</body>

</html>