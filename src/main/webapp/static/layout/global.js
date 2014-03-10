
$(document).ready( initBookmarks );

function initBookmarks () {
	// Table of Contents links
	$("#TOC")
		.find(".tocBtn").click( toggleTOC ).end()
		.find("A").click( scrollToBookmark )
		//.find("A").click( showCollapsibleSection ) // OLD
	;
	// Links in the center pane
	$("DIV.ui-layout-center A[href*=#]").click( scrollToBookmark );
	//.click( showCollapsibleSection );
};

function toggleTOC () {
	var $Btn = $(this)
	,	$List = $Btn.siblings("UL");
	if ($List.is(":visible")) {
		$List
			.css("width", $List.innerWidth())
			.slideUp('fast', function() {$(this).css("width","auto");})
		;
		$Btn.css({ backgroundImage: 'url("../static/layout/img/icon_tree_on.gif")' });
	}
	else {
		$List.slideDown('fast');
		$Btn.css({ backgroundImage: 'url("../static/layout/img/icon_tree_off.gif")' });
	}
};

function scrollToBookmark ( hash ) {
	// if triggered by A.click binding...
	if (hash == undefined || hash == '')
		return true;
	else if (typeof hash != 'string') {
		if (location.pathname.replace(/^\//,'') != this.pathname.replace(/^\//,'')
			|| location.hostname != this.hostname
		)
			return true;
		else {
			hash = this.hash;
			if (!hash || !hash.length) return true;
		}
	}
	
	var $Pane	= $('.ui-layout-center');
	var $Target = $(hash);
	$Target = $Target.length && $Target || $('[name='+ hash.slice(1) +']');

};


function toggleCollapsibleSection () {
	var
		bookmark	= "#"+ this.id
	,	$Button		= $(this).children("SPAN.expander")
	,	$Section	= $(this).next()
	,	isVisible	= $Section.is(":visible")
	;
	$Button.removeClass("expander_open expander_closed");
	$Button.addClass(isVisible ? "expander_closed" : "expander_open");
	if (isVisible) {
		// use the cssWidth() if available - else use *inaccurate* innerWidth() method
		var innerWidth = (pageLayout) ? pageLayout.cssWidth($Section) : $Section.innerWidth()-6; // remove 2x3px padding
		$Section.css("width", innerWidth);
	}
	else
		self.location.replace( bookmark ); // scroll heading to top of page
	$Section.slideToggle('slow', function(){
		$Section.css("width","auto"); // RESET width
		if (!isVisible) self.location.replace( bookmark ); // scroll heading AGAIN
	}); 
};


