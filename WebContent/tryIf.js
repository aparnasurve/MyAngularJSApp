/**
 * 
 */
var app=angular.module('myApp',[]);
app.controller('myCtrl', function($scope){
	var name = document.getElementById('name').value;
	var password = document.getElementById('password').value;
	console.log(name);
	console.log(password);
	$scope.submit = function()
	{
		if(name === "" || password === "")
			{
			alert("please enter name and password");
			}
		else if (name === "abc")
			{
			if(password === "abc123")
				{
				alert("successful login");
				}
			}
		else
			{
			alert("try again");
			}
	}
	
	
});