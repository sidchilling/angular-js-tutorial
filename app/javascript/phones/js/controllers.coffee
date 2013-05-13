@PhoneListController = ['$scope', '$http', ($scope, $http) ->
	$scope.query = ''
	$scope.order = 'age'
	$http.post('http://localhost:8000/phones/get_phones').success((data) ->
		if data.success
			$scope.phones = data.phones
	)
	$scope.has_query = (query) =>
		if query.trim().length > 0 then return true else return false
	]

@PhoneDetailController = ['$scope', '$routeParams', '$http', ($scope, $route_params, $http) ->
	$scope.phone_id = $route_params.phone_id
	$http.post("http://localhost:8000/phones/get_phone_details?phone_id=#{$scope.phone_id}").success((data) ->
		if data.success
			$scope.phone_details = data.details
			$scope.main_image = data.details.images[0]

	$scope.set_image = (img) ->
		$scope.main_image = img
	)
	]
