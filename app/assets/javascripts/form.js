
$(document).ready(initialize);
$(document).on('page:load', initialize);


function initialize() {
	form_change();
	intro_events();
	general_events();
	new_user_events();


};

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
	});

	$('#back_to_basics').on('click', function(event) {
		event.preventDefault;
		$('#quality').addClass("hidden");
		$('#basic_info').removeClass("hidden");
	})
}

function general_events() {
	$('.next-button, .back-button, button').on('mouseover', function() {
		$(this).addClass('underline');
	});
	$('.next-button, .back-button, button').on('mouseout', function() {
		$(this).removeClass('underline');
	});
}