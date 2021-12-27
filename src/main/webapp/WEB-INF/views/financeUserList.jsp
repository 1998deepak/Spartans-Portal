<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>User-Dashboard</title>
<link rel="icon" href="../images/Krios-icon-header.png" type="image/icon type">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <!-- Bootstrap Styles-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FontAwesome Styles-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
    <!-- Morris Chart Styles-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
    <!-- Custom Styles-->
    <link href="assets/css/custom-styles.css" rel="stylesheet" />
    <!-- Google Fonts-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    <link rel="stylesheet" href="assets/js/Lightweight-Chart/cssCharts.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<style>
body {
	background-color: #E8E8E8;
}

table {
	padding-left: 0.5px;
	padding-right: 0.5px;
}

#mydiv {
	width: 1189px;
	padding: 10px;
	border: 0.5px;
	-webkit-box-shadow: 0 30px 60px 0;
	margin: 20px;
	-webkit-border-radius: 10px 10px 10px 10px;
	border-radius: 10px 10px 10px 10px;
	background: #fff;
	padding: 30px;
	position: relative;
	padding: 0px;
	-webkit-box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
	box-shadow: 0 30px 60px 0 rgba(0, 0, 0, 0.3);
	text-align: left;
}

button {
	background-color: #34AB53;
	color: white;
	padding: 7px 12px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	border-radius: 10px 10px 10px 10px;
}

button:hover {
	opacity: 0.8;
}

table, th, td {
	border: 1px;
}

th, td {
	padding: 7px;
	text-align: left;
}

.panel-group .panel+.panel {
	margin-top: -2px;
}
</style>
<body>
    <div>
		<jsp:include page="./components/financeNavbar.jsp" />
	</div>
	<div  style="padding-right:5%;padding-left:5%;padding-top:6%;">

        <table id="dtBasicExample" class="table table-striped table-bordered table-sm" style="background-color: rgb(255, 255, 255);"
                cellspacing="0" width="100%">
                <thead style="background-color: white;">

                <tr style="background-color: white;">
                   <div class="row-md-12">
                        <div class="col-sm-3 wrap-input100 validate-input m-b-16" style="padding:3px">
                            <b >Show&nbsp;&nbsp;</b>
                        	<select class="input100" style="padding:7px;border-radius:5px;" name="role">
                        		<option value="five">5</option>
                        		<option value="ten">10</option>
                        		<option value="fifteen">15</option>
                        		<option value="twenty">20</option>
                        		<option value="twentyfive">25</option>
                        	</select>
                        	<span class="focus-input100"></span>
                        	 <b >&nbsp;&nbsp;&nbsp;Entries</b>
                        </div>

                        <div  class=" col-sm-3 wrap-input100 validate-input m-b-16" style="padding:3px;margin-left:3%" >
                             <i class="fa fa-filter" style="font-size:25px"></i>
                            <b >   Status  &nbsp;&nbsp;</b>
                        	<select class="input100" style="padding:7px;border-radius:5px;" name="role">

                        		<option value="any">Any</option>
                        		<option value="pending">Pending</option>
                        		<option value="completed">Completed</option>
                        		<option value="inprogress">Inprogress</option>
                        	</select>
                        	<span class="focus-input100"></span>
                         </div>
                         <div  class="col-sm-3"  style="padding:3px;" >
                            <i class="fa fa-calendar" style="font-size:25px"></i>
                             <b >   Date  &nbsp;&nbsp;</b>
                            <input style="border-radius:5px;" type="month" id="start" name="start" min="2021-12" value="2021-12">
                         </div>
                         <div class="col input-group mb-3" style="padding:3px;">
                            <input type="text" style="border-radius:5px;padding:8px"  placeholder="Search User" aria-label="Recipient's username" aria-describedby="basic-addon2">
                          </div>


                    </div>
                  </tr>
                   <tr>
                                        <th class="th-sm">Id
                                        </th>
                                        <th class="th-sm">Name
                                        </th>
                                        <th class="th-sm">Email
                                        </th>

                                         <th class="th-sm">Operation
                                        </th>
                    </tr>


                    

	<div style="position: absolute; left: 150px; top: 250px;">
        <table id="dtBasicExample" class="table table-striped table-bordered table-sm" style="background-color: rgb(255, 255, 255);"
                cellspacing="0" width="100%">
                <thead style="background-color: white;">

                    <tr>
                        <th class="th-sm">Id
                        </th>
                        <th class="th-sm">Name
                        </th>
                        <th class="th-sm">Email
                        </th>

                         <th class="th-sm">Operation
                        </th>
                    </tr>

                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Ganesh Chavan</td>
                        <td>chavanganesh806@gmail.com</td>

                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button name="editbtn" class="btn col align-items-center" ><i   class="fa fa-eye"></i></button>


                        <td><button name="editbtn" class="btn col"><i class="fa fa-eye"></i></button>

                        <td><button name="editbtn" class="btn col"><i class="fas fa-eye"></i></button>


                        </td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Ganesh Chavan</td>
                        <td>chavanganesh806@gmail.com</td>

                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button name="editbtn" class="btn col"><i class="fa fa-eye"></i></button>


                        <td><button name="editbtn" class="btn col"><i class="fa fa-eye"></i></button>

                        <td><button name="editbtn" class="btn col"><i class="fas fa-eye"></i></button>


                        </td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Ganesh Chavan</td>
                        <td>chavanganesh806@gmail.com</td>

                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button name="editbtn" class="btn col"><i class="fa fa-eye"></i></button>


                        <td><button name="editbtn" class="btn col"><i class="fa fa-eye"></i></button>

                        <td><button name="editbtn" class="btn col"><i class="fas fa-eye"></i></button>


                        </td>
                    </tr>
                    <tr>
                        <td>1</td>
                        <td>Ganesh Chavan</td>
                        <td>chavanganesh806@gmail.com</td>

                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button name="editbtn" class="btn col"><i class="fa fa-eye"></i></button>


                        <td><button name="editbtn" class="btn col"><i class="fa fa-eye"></i></button>

                        <td><button name="editbtn" class="btn col"><i class="fas fa-eye"></i></button>


                        </td>
                    </tr>
                     <tr>
                                            <td>1</td>
                                            <td>Ganesh Chavan</td>
                                            <td>chavanganesh806@gmail.com</td>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button name="editbtn" class="btn col"><i class="fa fa-eye"></i></button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Ganesh Chavan</td>
                                            <td>chavanganesh806@gmail.com</td>
                                            <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<button name="editbtn" class="btn col"><i class="fa fa-eye"></i></button>
                                            </td>
                                        </tr>
                </tbody>
            </table>
            <nav aria-label="Page navigation" style="float:right">
                              <ul class="pagination">
                                <li class="page-item">
                                  <a class="page-link" href="#" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                    <span class="sr-only">Previous</span>
                                  </a>
                                </li>
                                <li class="page-item"><a class="page-link" href="#">1</a></li>
                                <li class="page-item"><a class="page-link" href="#">2</a></li>
                                <li class="page-item"><a class="page-link" href="#">3</a></li>
                                <li class="page-item">
                                  <a class="page-link" href="#" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                    <span class="sr-only">Next</span>
                                  </a>
                                </li>
                              </ul>
                            </nav>
	</div>

<footer>
	<div style="position: absolute; left: 500px; top: 620px;">
	<h4><jsp:include page="./components/footer.jsp" /></h4>
	</div>
	</footer>
</body>

</html>