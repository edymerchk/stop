
angular.module('stopClientApp')
  .controller('GamesCtrl', function ($scope) {
  	$scope.games = [];
    $scope.show_dashboard = false;
    $scope.show_login = true;

  	var  col = {
  		colors: ['red', 'green', 'blue'],
  		countries: ['colombia', 'brasil', 'india']
  	}

  	$scope.result = {
  		color: null,
  		country: null
  	}


    $scope.login = function (user){
      $scope.show_dashboard = true;
      $scope.show_login = false;
    }

    $scope.check = function (game){

      var game_temp = angular.copy(game);

      game_temp.result_country  = col.countries.contains(game.country);
      game_temp.result_color = col.colors.contains(game.color);

      $scope.games.push(game_temp)
    	$scope.game.country = '';
    	$scope.game.color = '';
    }
  });