'use strict';

angular.module('stopClientApp')
  .controller('GamesCtrl', function ($scope) {
  	$scope.games = []


  	var  col = {
  		colors: ['red', 'green', 'blue'],
  		countries: ['colombia', 'brasil', 'españa', 'india']
  	}

  	$scope.result = {
  		color: null,
  		country: null
  	}
  	

    $scope.check = function (game){

    	$scope.result.country = col.countries.indexOf(game.country)> -1
    	$scope.result.color = col.colors.indexOf(game.color)> -1 
    	
    	
    	$scope.games.push({
    		color_old: game.color,
    		country_old: game.country,
    		result_color: $scope.result.color,
    		result_country: $scope.result.country
    	})

    	$scope.game.country = ''
    	$scope.game.color = ''
    }
  });
