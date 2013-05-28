
angular.module('stopClientApp')
  .controller('GamesCtrl', function ($scope) {
  	$scope.games = [];

  	var  col = {
  		colors: ['red', 'green', 'blue'],
  		countries: ['colombia', 'brasil', 'india']
  	}

  	$scope.result = {
  		color: null,
  		country: null
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