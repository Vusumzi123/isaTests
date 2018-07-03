function changeTab(evt, tab) {
			var activeTabs = $('.active');
			activeTabs.each(function() {
				$(this).removeClass('active');
			})

			var toActivete = $('#' + tab);
			toActivete.addClass('active');
		}

$(document).ready(function() {
	$('input#input_text, textarea#textarea2').characterCounter();
});