// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

$(function(){

	$('#again').bind('ajax:success', function(evt, data){
		var fortune = $("#fortune");
		fortune.fadeOut('slow', function(){
			fortune.html(data.fortune.text).fadeIn('slow');
		})
	});

});
