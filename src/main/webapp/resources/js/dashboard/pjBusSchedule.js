var jQuery_Cms = jQuery_Cms || $.noConflict();
(function ($, undefined) {
	$(function () {
        if ($("#morris-one-line-chart").length) {
            Morris.Line({
                element: 'morris-one-line-chart',
                data: myLabel.month_booked,
                xkey: 'y',
                ykeys: ['a'],
                labels: [myLabel.bookings],
                hideHover: 'auto',
                resize: true,
                axes: 'x',
                parseTime: false,
                grid: false,
                smooth: false,
                lineColors: ['#54cdb4']
            });
        };
	});
})(jQuery_Cms);