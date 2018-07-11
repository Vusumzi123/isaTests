function changeTab(evt, tab) {
	var activeTabs = $('.active');
	activeTabs.each(function() {
		$(this).removeClass('active');
	})
	var toActivete = $('#' + tab);
	toActivete.addClass('active');
}