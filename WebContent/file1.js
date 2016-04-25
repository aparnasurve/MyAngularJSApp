/**
 * 
 */

angular.module('Demo', [])
  .controller('Demo', function($scope) {
    $scope.data = [
      { text: "This is my sample text area.  This is where I will place the sample text.  I really hope that this works the way I planned." }
    ]
  })
  .filter('highlight', function($sce) {
   return function(text, phrase) {
      if (phrase) text = text.replace(new RegExp('('+phrase+')', 'gi'),
        '<span class="highlighted">$1</span>')

      return $sce.trustAsHtml(text)
    }
  })
  