/**
 * 
 */
 angular.module('AppController', []).controller('WordController', function(){
          var wordController = this;
          wordController.WordLength = 0;
          wordController.Text = "";
          wordController.WordLengthStyle={'color':'red'}; 
          wordController.count = 0;
          wordController.UpdateWordLength = function( $event)
          {
            wordController.WordLength = wordController.Text.length;
          };
          
          });       