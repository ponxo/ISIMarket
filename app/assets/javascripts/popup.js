POPUP = {
	setup: function() {
        // add invisible 'div' to end of page:
        $('<div id="infoProducto"></div>').
            hide().
            appendTo($('body'));
        $('a.pop').click(POPUP.getProductInfo);
    },
    getProductInfo: function() {
        $.ajax({type: 'GET',
                url: $(this).attr('href'),
                timeout: 5000,
                success: POPUP.showProductInfo,
                error: function() { alert('Error!'); }
               });
        return(false);
    },
    showProductInfo: function(data) {
        // center a floater 1/2 as wide and 1/4 as tall as screen
        var oneFourth = Math.ceil($(window).width() / 4);
        $('#infoProducto').
            html(data).
            css({'left': oneFourth,  'width': 2*oneFourth, 'top': 150}).
            show();
        // make the Close link in the hidden element work
        $('#closeLink').click(POPUP.hideProductInfo);
        return(false);  
    },
    hideProductInfo: function() {
        $('#infoProducto').hide();
        return(false);
    },
}
$(POPUP.setup);			//when document is ready, run setup code
