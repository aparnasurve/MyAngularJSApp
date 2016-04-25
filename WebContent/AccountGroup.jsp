
<!doctype html>
<html ng-app="app">
  <head>
  
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular-touch.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular-animate.js"></script>
    <script src="http://ui-grid.info/docs/grunt-scripts/csv.js"></script>
    <script src="http://ui-grid.info/docs/grunt-scripts/pdfmake.js"></script>
    <script src="http://ui-grid.info/docs/grunt-scripts/vfs_fonts.js"></script>
    <script src="http://ui-grid.info/release/ui-grid.js"></script>
    <link rel="stylesheet" href="http://ui-grid.info/release/ui-grid.css" type="text/css">
    <!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
  </head>
  <style>
  
p.accntgrp {
    
    margin-top: 25px;
    margin-bottom: 25px;
    margin-right: 25px;
    margin-left: 25px;
}

table, td, th {    
    text-align: left;
}

table {
    width: 100%;
}

th, td {
    padding: 15px;
}
             
  </style>
  <body>
<div class="container">
  
  <div id="lowerPanel" class="container-fluid">
    <ul class="nav nav-tabs">
			<li class="active">Edit Account Group</a></li>
	</ul>
    </div>	 
	 

<div ng-controller="MainCtrl"> 
<table >
<tr>
<td><p class="accntgrp">Select an Existing Account Group below to View <span class="glyphicon glyphicon-eye-open"></span> or Update 
<span class="glyphicon glyphicon-pencil"></span>, or, <a href="CreateNewAccountGroup.jsp">Create a new Account Group</a></p></td>
<td text-align: left;>Show Groups : <select name="accountgrp" data-ng-model="selectedOption"  ng-change="selectAction()"          
     ng-options="accountgrp as accountgrp.Owner for accountgrp in accountGrp"
         ng-change="onChange(accountgrp)" selected> 
         <option>Select Account Group</option> 
         </select></td>  
       <!--  <td> <input placeholder="Filter..." type="text"
           oninput="onFilterChanged(this.value)"
           onchange="onFilterChanged(this.value)"
           onchange="onFilterChanged(this.value)"
           onkeydown="onFilterChanged(this.value)"
           onkeyup="onFilterChanged(this.value)"/>

        </td> -->
</tr>
</table>  
 </div> 
<div ng-controller="MainCtrl">
  <div ui-grid="gridOptions" ui-grid-selection class="grid"></div>
</div>


    <script src="AccountGroup.js"></script>
    
    
  </body>
</html>
