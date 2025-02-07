// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails";
import "controllers";
import "jquery";

$(document).on("turbo:load", function (e) {
	updateChart();
	fetchSalesData("line");
});

function updateChart() {
	$("#chart_type").on("change", function (e) {
		var selectedChart = $(this).val();
		fetchSalesData(selectedChart);
	});
}

function fetchSalesData(selectedChart) {
	$.ajax({
		url: "/charts/fetch_sales_data",
		method: "get",
		success: function (data) {
			manage_charts(data, selectedChart);
		},
	});
}

function manage_charts(record, chartType) {
	var labels = record["months"];
	var data = {
		labels: labels,
		datasets: [
			{
				label: "Sales Data",
				data: record["amount"],
				fill: chartType == "area",
				borderColor: "rgb(75, 192, 192)",
				tension: 0.1,
			},
		],
	};

	if (chartType == "area") {
		chartType = "line";
	}
	var config = {
		type: chartType,
		data: data,
	};

	var canvas = document.getElementById("chart");
	var context = canvas.getContext("2d");

	if (canvas.chart) {
		canvas.chart.destroy();
	}
	var newChart = new Chart(context, config);

	canvas.chart = newChart;
}
