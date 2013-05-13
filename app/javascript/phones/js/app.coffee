route_map =
	'/phones' : {templateUrl : 'phone-listing.html', controller : 'PhoneListController'}
	'/phones/:phone_id' : {templateUrl : 'phone-details.html', controller : 'PhoneDetailController'}
	'otherwise' : {redirectTo : '/phones'}

angular.module('phones', []).config(['$routeProvider', ($route_provider) ->
	$route_provider.when '/phones', route_map['/phones']
	$route_provider.when '/phones/:phone_id', route_map['/phones/:phone_id']
	$route_provider.otherwise route_map['otherwise']
	])
