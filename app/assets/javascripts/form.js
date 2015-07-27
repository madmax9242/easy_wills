// $('#r1, #r2, #r3, #r4, #r5').change(function() {
// 	$('#hidden').val(this.val());
// })

$(function() {
	form_change();


});

function form_change() {
	$('#to_2').on('click', function(event) {
		event.preventDefault;
		$('#first').addClass("hidden");
		$('#second').toggleClass('hidden');
		$('.progress-bar').text("25%");
		$('.progress-bar').attr("style", "width:25%");
	});

	$('#to_3').on('click', function(event) {
		event.preventDefault;
		$('#second').addClass("hidden");
		$('#third').removeClass('hidden');
		$('.progress-bar').text("50%");
		$('.progress-bar').attr("style", "width:50%");
	});

	$('#to_4').on('click', function(event) {
		event.preventDefault;
		$('#third').addClass("hidden");
		$('#fourth').removeClass('hidden');
		$('.progress-bar').text("75%");
		$('.progress-bar').attr("style", "width:75%");
	});
}