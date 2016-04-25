/**
 * 
 */

function wordCount($scope) {
    $scope.numberofwords = function(s) {
        s = document.getElementById("mytext").value;
        s = s.replace(/(^\s*)|(\s*$)/gi,"");
        s = s.replace(/[ ]{2,}/gi," ");
        s = s.replace(/\n /,"\n");
        return s.split(' ').length;
    }
}