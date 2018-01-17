console.log("Hello from the JavaScript console!");

// Your AJAX request here

$.ajax({
    url:'http://api.openweathermap.org/data/2.5/weather?q=New+York,us,New+York,us&appid=1876088f0493f56dd561dcd2447d0e5b',
    type: 'GET',
	success: function(weatherData) {
		console.log('New York Weather:');
		console.log(weatherData);
	},
	error: function(errMsg) {
		console.log(errMsg);
	}
});
// Add another console log here, outside your AJAX request
console.log("outside"); //prints before ajax request
