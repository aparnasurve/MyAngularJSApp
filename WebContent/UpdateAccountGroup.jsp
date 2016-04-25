<div ng-controller="AccountsController" ng-init="getAccontsData()">
<!--Filter Starts here-->
<div class="row margin-left-2" >
	<div class="form-group">
		<label class="form-inline"> Accounts </label> 
	</div>
		
</div>
<div class="row dark-background margin-left-2">
    <button type="button" class="btn btn-primary" data-toggle="collapse" id="accModifytBtn" data-target="#demo">Modify Filter</button>
	<div id="demo" class="collapse">
		<div class="tab-content clearfix">
				<div class="row  margin-top-10 margin-left-2">
					<h5>Number / Name</h5>
					<div class="form-inline">
						<div class="row  margin-top-10 margin-left-2">
							<div class="form-inline">
								<div class="form-group">
									<select class="form-control" data-ng-model="numberNameFilter" id="numberFilter">
								        <option value="Number">Number</option>
								         <option value="Name">Name</option>
									</select>
									<select  class="form-control margin-left-5" data-ng-model="filterType" id="startsWithFilter">
										<option value="Starts With">Starts With</option>
										<option value="Contains">Contains</option>
					                    <option value="Ends With">Ends With</option>
									</select>
									<input type="text" class="form-control margin-left-5"  data-ng-model="fieldFilter" id="fieldFilter">
									 <button type="button" class="btn btn-primary" ng-click="addFilter()" >Add</button>
								</div>
							</div>
						</div>
					</div>
			</div>
			<div class="row margin-top-5 margin-left-2">
			
					   	<div class="col-md-3 margin-left-2" style="padding-right: 2px; padding-left: 0px;">
								<textarea class = "form-control" rows = "3" cols = "36" style="resize:none" data-ng-model="textAreaFilter"></textarea>
					   
					     </div>
					     <div class="col-md-3" style="padding-right: 2px; padding-left: 0px;">
					          <div class="row margin-left-2">
					              <input type="radio"   name="radioFilter" data-ng-model="AndOrFilter" id="radioFilterAND" value="AND">AND							 
							      <input style="margin-left: 5px;" type="radio" name="radioFilter" data-ng-model="AndOrFilter" value="OR" id="radioFilterOR">OR 
							   </div>
							    <div class="row margin-left-2 margin-top-5 ">    	
							       	<button type="button" class="btn btn-primary" ng-click="removeLastFilter()">Remove</button>
					                 <button type="button" class="btn btn-primary" ng-click="removeAllFilters()">Remove All</button> 
					             </div>    
					     </div>
			     
				    
							    
			</div>
			
			<div class="row margin-top-5 margin-left-0">
					<div class="form-inline">
								<div class="col-md-2">
								    <h5>Account Type</h5>
								</div>
							<div class="col-md-5">
							     <input style="background-color: white;  margin-left: 10px;" type="checkbox" ng-model="checkboxModelAccntType.Consolidated" />Consolidated
							     <input style="background-color: white;  margin-left: 10px;" type="checkbox" ng-model="checkboxModelAccntType.Portfolio" />Portfolio
							     <input style="background-color: white;  margin-left: 10px;" type="checkbox" ng-model="checkboxModelAccntType.accountGroup" />Account Group
							     <select class="form-control" ng-model="accountGroup" >
							         <option value="">Mine</option>
							     </select>
							</div>
						
						
					</div>
			</div>
			<div class="row margin-top-5 margin-left-0">
					<div class="form-inline">
								<div class="col-md-2">
								<h5>Entity Status</h5>
								</div>
								
						<div class="col-md-5">
							<input style="background-color: white;  margin-left: 10px;" type="checkbox" ng-model="checkboxModelEntityStatus.active" />Active
							<input style="background-color: white;  margin-left: 10px;" type="checkbox" ng-model="checkboxModelEntityStatus.inactive" />Inactive
						</div>
					
						
					</div>
			</div>
			<div class="row margin-top-5 margin-left-0">
					<div class="form-inline">
							<div class="col-md-2">
								<h5>Accounting Status</h5>
							</div>
							<div class="col-md-5">
								<input style="background-color: white;  margin-left: 10px;" type="checkbox" ng-model="checkboxModelAccntingStatus.finalStatus" />Final
								<input style="background-color: white;  margin-left: 10px;" type="checkbox" ng-model="checkboxModelAccntingStatus.preliminary" />Preliminary
							</div>
							
						
					</div>
			</div>
			<div class="row  margin-top-5 margin-left-0">
					<div class="form-inline">
						<button type="button" class="btn btn-primary" value = "Apply Filter">Apply Filter</button>
					</div>
			</div>
		</div>
	</div>
</div>
<!-- Filter ends here -->

<!-- Accounts Controller Starts here -->