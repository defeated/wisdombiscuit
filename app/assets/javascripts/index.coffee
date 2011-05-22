$ ->

	$('#again').bind 'ajax:success', (evt, data) ->
		$('#fortune').fadeOut -> $(this).html(data.text).fadeIn()
