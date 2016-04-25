<!doctype html>
<html ng-app="accntGrpApp">
  <head>
  
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular-touch.js"></script>
    <script src="http://ajax.googleapis.com/ajax/libs/angularjs/1.4.3/angular-animate.js"></script>
    <script src="http://ui-grid.info/docs/grunt-scripts/csv.js"></script>
    <script src="http://ui-grid.info/docs/grunt-scripts/pdfmake.js"></script>
    <script src="http://ui-grid.info/docs/grunt-scripts/vfs_fonts.js"></script>
    <script src="http://ui-grid.info/release/ui-grid.js"></script>
    <link rel="stylesheet" href="http://ui-grid.info/release/ui-grid.css" type="text/css">
    <link rel="stylesheet" href="main.css" type="text/css">
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
	 

<div data-ng-controller="AccntGrpCtrl">
    <ul class="inline">
        <li>
            <div class="alert alert-info">
                 <h4>Total Filtered Account Groups: {{filtered.length}}</h4>

            </div>
        </li>
        <li>
            <div class="btn-group" data-ng-class="{open: open}">
                <button class="btn">Filter by Accounts</button>
                <button class="btn dropdown-toggle" data-ng-click="open=!open" ><span class="caret"></span>

                </button>
                <ul class="dropdown-menu" aria-labelledby="dropdownMenu">
                    <li><a data-ng-click="checkAll()"><i class="icon-ok-sign"></i>  Check All</a>

                    </li>
                    
                    <li><a data-ng-click="selectedCompany=[];"><i class="icon-remove-sign"></i>  Uncheck All</a>

                    </li>
                    <li class="divider"></li>
                    <li data-ng-repeat="groups in accntGrpDetails"> <a data-ng-click="setSelectedAccntGrp()">{{groups.Owner}}</a>

                    </li>
                </ul>
            </div>
        </li>
    </ul>
    <hr/>
     <h3>Account Group Table:</h3>

    <table class="table table-hover table-striped">
        <thead>
            <tr>
                <th style="width:10%">Name</th>
                <th style="width:20%">Type</th>
                <th style="width:40%">Action</th>
                <th style="width:30%">Accounts</th>
                <th style="width:30%">Owner</th>
                <th style="width:30%">CreatedEST</th>
                <th style="width:30%">LastUpdatedEST</th>
                 <th style="width:30%">Read-Only</th>
            </tr>
        </thead>
        <tbody>
            <tr data-ng-repeat="account in filtered = (AccntGrps | AccountGrpFilter:selectedAccountGrp)">
                <td>{{account.Name}}</td>
                <td><em>{{account.Type}}</em>

                </td>
                <td>{{account.Action}}</td>
                <td>{{account.Accounts}}</td>
                 <td>{{account.Owner}}</td>
                  <td>{{account.CreatedEST}}</td>
                   <td>{{account.LastUpdatedEST}}</td>
                    <td>{{account.Read-Only}}</td>
            </tr>
        </tbody>
    </table>
    <!-- <pre>{{selectedCompany|json}}</pre>
<pre>{{companyList|json}}</pre>
<pre>{{clients|json}}</pre>
-->
</div>


    <script>
    
    var App = angular.module('accntGrpApp', ['App.filters']);
    App.controller('AccntGrpCtrl', ['$scope', function ($scope) {
        $scope.selectedAccountGrpDropDown = [];

        $scope.accntGrpDetails  = [
                              { 
                                  "Name":"6 Digit",
                                  "Type":"Portfolio",
                                  "Action":"",
                                  "Accounts":"11",
                                  "Owner":"Kalyani Desai",
                                  "CreatedEST":"11/20/2013 2:48:45 AM",
                                  "LastUpdatedEST":"Kalyani Desai 11/20/2013 2:48:45 AM",
                                  "Read-Only":""
                               },
                               {
                                  "Name":"Arun Group",
                                  "Type":"Portfolio",
                                  "Action":"",
                                  "Accounts":"4",
                                  "Owner":"Kalyani Desai",
                                  "CreatedEST":"12/3/2013 5:32:32AM",
                                  "LastUpdatedEST":"Kalyani Desai",
                                  "Read-Only":""
                               },
                               {
                                  "Name":"Cash 123",
                                  "Type":"Portfolio",
                                  "Action":"",
                                  "Accounts":"4",
                                  "Owner":"Kalyani Desai",
                                  "CreatedEST":"11/20/2013 2:50:30AM",
                                  "LastUpdatedEST":"Kalyani Desai 11/20/2013 2:50:30AM",
                                  "Read-Only":""
                               },
                               {
                                  "Name":"Cash 345",
                                  "Type":"Portfolio",
                                  "Action":"",
                                  "Accounts":"2",
                                  "Owner":"Kalyani Desai",
                                  "CreatedEST":"11/20/2013 6:51:15 AM",
                                  "LastUpdatedEST":"Kalyani Desai 11/20/2013 6:51:15 AM",
                                  "Read-Only":""
                               },
                               {
                                  "Name":"Consolidated",
                                  "Type":"Portfolio",
                                  "Action":"",
                                  "Accounts":"10",
                                  "Owner":"Kalyani Desai",
                                  "CreatedEST":"11/20/2013 3:45:20 AM",
                                  "LastUpdatedEST":"Kalyani Desai 11/20/2013 3:45:20 AM",
                                  "Read-Only":""
                               },
                               {
                                  "Name":"Multiple 123 ",
                                  "Type":"Portfolio",
                                  "Action":"",
                                  "Accounts":"45",
                                  "Owner":"Kalyani Desai",
                                  "CreatedEST":"11/20/2013 2:53:58AM",
                                  "LastUpdatedEST":"Kalyani Desai 11/20/2013 2:53:58AM",
                                  "ReadOnly":""
                               }
                            ];
                            

        $scope.AccntGrps = [
                          {
                              "AccountHolderName":"Kalyani Desai",
                              "AccountGrpName":
                                 {
                                    "Name":"6 Digit",
                                    "Type":"Portfolio",
                                    "Action":"",
                                    "Accounts":"11",
                                    "Owner":"Kalyani Desai",
                                    "CreatedEST":"11/20/2013 2:48:45 AM",
                                    "LastUpdatedEST":"Kalyani Desai 11/20/2013 2:48:45 AM",
                                    "Read-Only":""
                                 }
              
                          },    
                          {
                              "AccountHolderName":"Kalyani Desai",
                              "AccountGrpName":
                              {
                                  "Name":"Multiple 123 ",
                                  "Type":"Portfolio",
                                  "Action":"",
                                  "Accounts":"45",
                                  "Owner":"Kalyani Desai",
                                  "CreatedEST":"11/20/2013 2:53:58AM",
                                  "LastUpdatedEST":"Kalyani Desai 11/20/2013 2:53:58AM",
                                  "ReadOnly":""
                               }
              
                          },
                           		{
                        	      "AccountHolderName":"Sidharth Rao",
                        	      "AccountGrpName":
                        	         {
                        	            "Name":"6 Digit",
                        	            "Type":"Portfolio",
                        	            "Action":"",
                        	            "Accounts":"11",
                        	            "Owner":"Sidharth Rao",
                        	            "CreatedEST":"11/20/2013 2:48:45 AM",
                        	            "LastUpdatedEST":"Kalyani Desai 11/20/2013 2:48:45 AM",
                        	            "Read-Only":""
                        	         }
                        	   }
                        	
                          ];
        
        
        
    $scope.setSelectedAccntGrp = function () {
        var Owner = this.AccntGrp.Owner;
        if (_.contains($scope.selectedAccountGrpDropDown, Owner)) {
            $scope.selectedAccountGrpDropDown = _.without($scope.selectedAccountGrpDropDown, Owner);
        } else {
            $scope.selectedAccountGrpDropDown.push(Owner);
        }
        return false;
    };
    
    $scope.isChecked = function (Owner) {
        if (_.contains($scope.selectedAccountGrpDropDown, Owner)) {
            return 'icon-ok pull-right';
        }
        return false;
    };

    $scope.checkAll = function () {
        $scope.selectedAccountGrpDropDown = _.pluck($scope.AccountGrp, 'Owner');
    };

}]);

angular.module('App.filters', []).filter('AccountGrpFilter', [function () {
    return function (AccntGrps, selectedAccountGrpDropDown) {
        if (!angular.isUndefined(AccntGrps) && !angular.isUndefined(selectedAccountGrpDropDown) && selectedAccountGrpDropDown.length > 0) {
            var tempAccntGrps = [];
            angular.forEach(selectedAccountGrpDropDown, function (Owner) {
                angular.forEach(AccntGrps, function (AccntGrp) {
                    if (angular.equals(AccntGrp.accntGrpDetail.Owner, Owner)) {
                        tempAccntGrps.push(AccntGrp);
                    }
                });
            });
            return tempAccntGrps;
        } else {
            return AccntGrps;
        }
    };
}]);
    </script>
    
  </body>
</html>
