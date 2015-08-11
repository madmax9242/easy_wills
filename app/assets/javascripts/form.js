

$(function() {
	form_change();
	intro_events();
	general_events();


});

function form_change() {

	$('#to_2').on('click', function(event) {

		event.preventDefault;
		$('#first').addClass("hidden");
		$('#second').removeClass('hidden');
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


function intro_events() {
	$('#intro-next').on('click', function(event) {
		$('#intro-text').addClass("hidden");
		$('#start-form').removeClass("hidden");
	});

}

function general_events() {
	$('.next-button, .back-button').on('mouseover', function() {
		$(this).addClass('underline');
	});
	$('.next-button, .back-button').on('mouseout', function() {
		$(this).removeClass('underline');
	});
}