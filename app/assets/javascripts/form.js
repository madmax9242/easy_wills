
$(document).ready(initialize);
$(document).on('page:load', initialize);
// Have to load the listening events when page loads because TurboLinks messes with the document ready status

function initialize() {
	form_change();
	intro_events();
	general_events();
	new_user_events();


};

// Listens for next/back button presses 
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

	$('#back_to_1').on('click', function(event) {
		event.preventDefault;
		$('#second').addClass("hidden");
		$('#first').removeClass("hidden");
		$('.progress-bar').text("0%");
		$('.progress-bar').attr("style", "width:0%");
	});

	$('#back_to_2').on('click', function(event) {
		event.preventDefault;
		$('#third').addClass("hidden");
		$('#second').removeClass("hidden");
		$('.progress-bar').text("25%");
		$('.progress-bar').attr("style", "width:25%");
	});

	$('#back_to_3').on('click', function(event) {
		event.preventDefault;
		$('#fourth').addClass("hidden");
		$('#third').removeClass("hidden");
		$('.progress-bar').text("50%");
		$('.progress-bar').attr("style", "width:50%");
	});

}



function intro_events() {
	$('#intro-next').on('click', function(event) {
		$('#intro-text').addClass("hidden");
		$('#start-form').removeClass("hidden");
	});

}

function new_user_events() {
	$('#to_QL').on('click', function(event) {
		event.preventDefault;
		$('#basic_info').addClass("hidden");
		$('#quality').removeClass("hidden");
		$('#starting').addClass("hidden");
	});

	$('#back_to_basics').on('click', function(event) {
		event.preventDefault;
		$('#quality').addClass("hidden");
		$('#basic_info').removeClass("hidden");
		$('#starting').removeClass("hidden");
	})
}

function general_events() {
	// Eliminates enter key press
	$('html').bind('keypress', function(e) {
		if(e.keyCode == 13) {
			return false;
		}
	});

	// Makes the spans behave like buttons
	$('.next-button, .back-button, button').on('mouseover', function() {
		$(this).addClass('underline');
	});
	$('.next-button, .back-button, button').on('mouseout', function() {
		$(this).removeClass('underline');
	});
}