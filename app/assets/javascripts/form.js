<<<<<<< HEAD

$(function() {
	form_change();
	intro_events();


});

function form_change() {
	$('#to_2').on('click', function(event) {
		alert('Working');
		event.preventDefault;
		$('#first').addClass("hidden");
		$('#second').toggleClass('hidden');
=======
function form_change() {

	$('.to_2').on('click', function(event) {

		event.preventDefault;
		$('#first').addClass("hidden");
		$('#second').removeClass('hidden');
>>>>>>> master
		$('.progress-bar').text("25%");
		$('.progress-bar').attr("style", "width:25%");
	});

<<<<<<< HEAD
	$('#to_3').on('click', function(event) {
=======
	$('.to_3').on('click', function(event) {
>>>>>>> master
		event.preventDefault;
		$('#second').addClass("hidden");
		$('#third').removeClass('hidden');
		$('.progress-bar').text("50%");
		$('.progress-bar').attr("style", "width:50%");
	});

<<<<<<< HEAD
	$('#to_4').on('click', function(event) {
=======
	$('.to_4').on('click', function(event) {
>>>>>>> master
		event.preventDefault;
		$('#third').addClass("hidden");
		$('#fourth').removeClass('hidden');
		$('.progress-bar').text("75%");
		$('.progress-bar').attr("style", "width:75%");
	});
<<<<<<< HEAD
}

function intro_events() {
	$('#intro-next').on('click', function(event) {
		$('#intro-text').addClass("hidden");
		$('#start-form').removeClass("hidden");
	});
=======
>>>>>>> master
}