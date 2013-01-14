CBOX = {
    setup: function() {
        // construct new DOM elements
        $('form#categorias_form').hide()
           
        $('<label for="filter" class="explanation">' +
          'Verduras' +
          '</label>' +
          '<input type="checkbox" id="filterverdura" checked="checked"/>'
         ).insertBefore('#productos').change(CBOX.filter_checked_verdura);
         
        $('<label for="filter" class="explanation">' +
          'Legumbres' +
          '</label>' +
          '<input type="checkbox" id="filterlegumbre" checked="checked"/>'
         ).insertBefore('#productos').change(CBOX.filter_checked_legumbre); 
         
        $('<label for="filter" class="explanation">' +
          'Carnes' +
          '</label>' +
          '<input type="checkbox" id="filtercarne" checked="checked"/>'
         ).insertBefore('#productos').change(CBOX.filter_checked_carne); 
         
        $('<label for="filter" class="explanation">' +
          'Lacteos' +
          '</label>' +
          '<input type="checkbox" id="filterlacteo" checked="checked"/>'
         ).insertBefore('#productos').change(CBOX.filter_checked_lacteo);   
         
         $('<label for="filter" class="explanation">' +
          'Bebidas' +
          '</label>' +
          '<input type="checkbox" id="filterbebida" checked="checked"/>'
         ).insertBefore('#productos').change(CBOX.filter_checked_bebida); 
         
         $('<label for="filter" class="explanation">' +
          'Otros' +
          '</label>' +
          '<input type="checkbox" id="filterotros" checked="checked"/>'
         ).insertBefore('#productos').change(CBOX.filter_checked_otros);       
    },
    filter_checked_verdura: function () {
        // 'this' is element that received event (checkbox)
        if ($(this).is(':checked')) {
            $('#productos tbody tr').each(CBOX.hide_if_verdura_row);
        } else {
            $('#productos tbody tr').each(CBOX.show_if_verdura_row);
        };
    },
    filter_checked_legumbre: function () {
        // 'this' is element that received event (checkbox)
        if ($(this).is(':checked')) {
            $('#productos tbody tr').each(CBOX.hide_if_legumbre_row);
        } else {
            $('#productos tbody tr').each(CBOX.show_if_legumbre_row);
        };
    },
    filter_checked_otros: function () {
        // 'this' is element that received event (checkbox)
        if ($(this).is(':checked')) {
            $('#productos tbody tr').each(CBOX.hide_if_otros_row);
        } else {
            $('#productos tbody tr').each(CBOX.show_if_otros_row);
        };
    },
    filter_checked_carne: function () {
        // 'this' is element that received event (checkbox)
        if ($(this).is(':checked')) {
            $('#productos tbody tr').each(CBOX.hide_if_carne_row);
        } else {
            $('#productos tbody tr').each(CBOX.show_if_carne_row);
        };
    },
    filter_checked_bebida: function () {
        // 'this' is element that received event (checkbox)
        if ($(this).is(':checked')) {
            $('#productos tbody tr').each(CBOX.hide_if_bebida_row);
        } else {
            $('#productos tbody tr').each(CBOX.show_if_bebida_row);
        };
    },
    filter_checked_lacteo: function () {
        // 'this' is element that received event (checkbox)
        if ($(this).is(':checked')) {
            $('#productos tbody tr').each(CBOX.hide_if_lacteo_row);
        } else {
            $('#productos tbody tr').each(CBOX.show_if_lacteo_row);
        };
    },
    hide_if_verdura_row: function() {
        if (! /^verdura$/i.test($(this).find('td:nth-child(2)').text())) {
            $(this)
        } else {
            $(this).show();
        }
    },
    show_if_verdura_row: function() {
        if  (! /^verdura$/i.test($(this).find('td:nth-child(2)').text())) {
            $(this)
        } else {
            $(this).hide();
        }
    },
    hide_if_legumbre_row: function() {
        if (! /^legumbre$/i.test($(this).find('td:nth-child(2)').text())) {
            $(this)
        } else {
            $(this).show();
        }
    },
    show_if_legumbre_row: function() {
        if  (! /^legumbre$/i.test($(this).find('td:nth-child(2)').text())) {
            $(this)
        } else {
            $(this).hide();
        }
    },
    hide_if_carne_row: function() {
        if (! /^carne$/i.test($(this).find('td:nth-child(2)').text())) {
            $(this)
        } else {
            $(this).show();
        }
    },
    show_if_carne_row: function() {
        if  (! /^carne$/i.test($(this).find('td:nth-child(2)').text())) {
            $(this)
        } else {
            $(this).hide();
        }
    },
    hide_if_bebida_row: function() {
        if (! /^bebida$/i.test($(this).find('td:nth-child(2)').text())) {
            $(this)
        } else {
            $(this).show();
        }
    },
    show_if_bebida_row: function() {
        if  (! /^bebida$/i.test($(this).find('td:nth-child(2)').text())) {
            $(this)
        } else {
            $(this).hide();
        }
    },
    hide_if_lacteo_row: function() {
        if (! /^lacteo$/i.test($(this).find('td:nth-child(2)').text())) {
            $(this)
        } else {
            $(this).show();
        }
    },
    show_if_lacteo_row: function() {
        if  (! /^lacteo$/i.test($(this).find('td:nth-child(2)').text())) {
            $(this)
        } else {
            $(this).hide();
        }
    },
    hide_if_otros_row: function() {
        if (! /^otro$/i.test($(this).find('td:nth-child(2)').text())) {
            $(this)
        } else {
            $(this).show();
        }
    },
    show_if_otros_row: function() {
        if  (! /^otro$/i.test($(this).find('td:nth-child(2)').text())) {
            $(this)
        } else {
            $(this).hide();
        }
    },
      
 
}
$(CBOX.setup);       // when document ready, run setup code verdura carne legumbre lacteo bebida otro
