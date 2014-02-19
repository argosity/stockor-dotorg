class ContactDialog

    constructor: (opts={})->
        $(".contact-us").click this.showContact
        SKR.Event.on('pagesize', this.onSize, this  )
        SKR.Event.on('pageload', this.onLoad, this  )
        SKR.Event.on('contactsent', this.onSend, this  )

    onLoad: (page, data )->
        this.onSize( data.size )

    onSize: (size)->
        $('#contact-dialog .content').height( size.height + 'px' )

    onSend: (msg,success)->
        $('#contact-dialog .modal-footer').removeClass('hidden')

    showContact: =>
        $('#contact-dialog .modal-footer').addClass('hidden')
        el = $('#contact-dialog')
            .modal('show')
            .find('.content')
            .html('')
        SKR.Sales.embedPage( el, 'contact', { req_so_number: false } )


$( -> new ContactDialog )