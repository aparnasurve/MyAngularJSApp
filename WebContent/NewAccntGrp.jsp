<!DOCTYPE html>
<html ng-app="modal.editing">

  <head>
    <link data-require="ui-grid@3.0.0RC20" data-semver="3.0.0RC20" rel="stylesheet" href="http://cdn.rawgit.com/angular-ui/ui-grid.info/gh-pages/release/3.0.0-rc.20/ui-grid.css" />
    <link data-require="bootstrap@*" data-semver="3.3.2" rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
    <script data-require="angular.js@1.3.15" data-semver="1.3.15" src="https://code.angularjs.org/1.3.15/angular.js"></script>
    <script data-require="angular.js@1.3.15" data-semver="1.3.15" src="https://code.angularjs.org/1.3.15/angular-sanitize.js"></script>
    <script data-require="ui-grid@3.0.0RC20" data-semver="3.0.0RC20" src="http://cdn.rawgit.com/angular-ui/ui-grid.info/gh-pages/release/3.0.0-rc.20/ui-grid.js"></script>
    <script data-require="ui-bootstrap@*" data-semver="0.12.1" src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.12.1.js"></script>
    <script data-require="jquery@2.1.3" data-semver="2.1.3" src="http://code.jquery.com/jquery-2.1.3.min.js"></script>
    
    <script src="https://cdn.rawgit.com/mike-marcacci/objectpath/v1.1.0/lib/ObjectPath.js"></script>
    <script src="https://cdn.rawgit.com/geraintluff/tv4/v1.1.9/tv4.min.js"></script>
    <script src="https://cdn.rawgit.com/Textalk/angular-schema-form/0.8.0/dist/schema-form.js"></script>
    <script src="https://cdn.rawgit.com/Textalk/angular-schema-form/0.8.0/dist/bootstrap-decorator.js"></script>
    
    <link rel="stylesheet" href="style.css" />
    <script src="NewAccntGrp.js"></script>
  </head>

  <body ng-controller="MainCtrl as vm">
    <div class="grid" ui-grid="vm.gridOptions" ui-grid-edit></div>
  </body>

</html>
