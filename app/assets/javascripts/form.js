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
	});

	$('#to_3').on('click', function(event) {
		event.preventDefault;
		$('#second').addClass("hidden");
		$('#third').removeClass('hidden');
	});

	$('#to_4').on('click', function(event) {
		event.preventDefault;
		$('#third').addClass("hidden");
		$('#fourth').removeClass('hidden');
	});
}