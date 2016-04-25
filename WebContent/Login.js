/**
 * 
 */
var myapp = angular.module("MyApp", [])
myapp.controller('MyCtrl', function($scope) {
   var validUsername = "kalyani";
   var validPassword = "abc123";
   
    var uname = document.getElementById("username").value;
	var pwd = document.getElementById("password").value;
	console.log(uname);
	$scope.Login = function()
	{
	if(uname==validUsername)
		{
		if(pwd==validPassword)
			{
			alert("Sucessful Login..!");
			}
		else if(uname=="" && pwd=="")
		{
			alert("Please Enter Username and Password..!");
			}
		
	else if(uname==validUsername && pwd=="")
		{
		alert("Please Enter Password..!");
		}
		}
	else
		{
		alert("Unsucessful Login..!");
		}
	}
   });
 

