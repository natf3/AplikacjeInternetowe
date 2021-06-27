$(document).ready(function(){
	$.ajax({
		url: "http://localhost/shop/admin/data.php",
		method: "GET",
		success: function(data) {
			console.log(data);
			var product = [];
			var quantity = [];

			for(var i in data) {
				product.push("ID produktu: " + data[i].product_id);
				quantity.push(data[i].quantity);
			}

			var chartdata = {
				labels: product,
				datasets : [
					{
						label: 'Ilość sprzedanych produktów',
						backgroundColor: 'rgba(200, 200, 200, 0.75)',
						borderColor: 'rgba(200, 200, 200, 0.75)',
						hoverBackgroundColor: 'rgba(200, 200, 200, 1)',
						hoverBorderColor: 'rgba(200, 200, 200, 1)',
						data: quantity
					}
				]
			};

			var ctx = $("#mycanvas");

			var barGraph = new Chart(ctx, {
				type: 'bar',
				data: chartdata
			});
		},
		error: function(data) {
			console.log(data);
		}
	});
});