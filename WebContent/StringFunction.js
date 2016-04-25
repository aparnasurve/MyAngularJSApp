/**
 * 
 */
 var smartPhoneApp = angular.module("SmartPhoneApp",[]);

        smartPhoneApp.controller("phoneCtrl",function($scope){
            $scope.phones = [
                {
                    "modelName" : "LUMIA 520",
                    "companyName" : "NOKIA"
                },
                {
                    "modelName" : "GALAXY S Series",
                    "companyName" : "SAMSUNG"
                },
                {
                    "modelName" : "CANVAS",
                    "companyName" : "MICROMAX"
                },
                {
                    "modelName" : "OPTIMUS",
                    "companyName" : "LG"                        
                }
            ];
          

        });