employeeApp.controller('employeeController', function($scope, $http){
	
	$scope.empobj = {
			
			first_name: '',
			surname: '',
			dob: '',
			gender: '',
			email: '',
			contact_no: '',
			address: '',
			department: '',
			designation: '',
			status: '',
			doh: '',
			basic_salary: '',
			username: '',
			password: ''
			
	};
	
	$scope.onEmpSubmit = function(){
		
		//alert('Okay')
		
		const data = JSON.stringify(this.empobj);
		$http.post('/employee_registration/add-employee_registration', data)
		.then(function(res){
			console.log(res);
		}).catch(function(err){
			
		})
	}
	
});




/*<script type="text/javascript">
$(function () {

	$('#datetimepicker4').datetimepicker();
});
</script>*/



/*const data = JSON.stringify(this.custobj);
$http.post('/customer/create-customer', data)
.then(function(res){
	console.log(res);
}).catch(function(err){
	
})*/