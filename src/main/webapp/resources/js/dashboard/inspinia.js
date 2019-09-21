/*
 *
 *   INSPINIA - Responsive Admin Theme
 *   version 2.7.1
 *
 */
var jQuery_Cms = jQuery_Cms || $.noConflict();
(function ($, window, document, undefined) {
$(document).ready(function () {
	var metisMenu = ($.fn.metisMenu !== undefined),
		slimScroll = ($.fn.slimScroll !== undefined);
    // Add body-small class if window less than 768px
    if ($(this).width() < 769) {
        $('body').addClass('body-small mini-navbar')
    } else {
        $('body').removeClass('body-small mini-navbar')
    }

    // MetisMenu
    if (metisMenu) {
    	$('#side-menu').metisMenu();
    }

    // Collapse ibox function
    $('.collapse-link').on('click', function () {
        var ibox = $(this).closest('div.ibox');
        var button = $(this).find('i');
        var content = ibox.children('.ibox-content');
        content.slideToggle(200);
        button.toggleClass('fa-chevron-up').toggleClass('fa-chevron-down');
        ibox.toggleClass('').toggleClass('border-bottom');
        setTimeout(function () {
            ibox.resize();
            ibox.find('[id^=map-]').resize();
        }, 50);
    });

    /*
    // Bind normal buttons
    Ladda.bind( '.ladda-button',{ timeout: 2000 });

    // Bind progress buttons and simulate loading progress
    Ladda.bind( '.progress-demo .ladda-button',{
        callback: function( instance ){
            var progress = 0;
            var interval = setInterval( function(){
                progress = Math.min( progress + Math.random() * 0.1, 1 );
                instance.setProgress( progress );

                if( progress === 1 ){
                    instance.stop();
                    clearInterval( interval );
                }
            }, 200 );
        }
    });

    var l = $( '.ladda-button' ).ladda();

    l.click(function(){
        // Start loading
        l.ladda( 'start' );

        // Timeout example
        // Do something in backend and then stop ladda
        setTimeout(function(){
            l.ladda('stop');
        },12000)
    });
    */

    $('#showsimple').click(function (){
        // Display a success toast, with a title
        toastr.success('Without any options','Simple notification!')

        toastr.options = {
          "closeButton": true,
          "debug": false,
          "progressBar": true,
          "preventDuplicates": false,
          "positionClass": "toast-top-center",
          "onclick": null,
          "showDuration": "400",
          "hideDuration": "1000",
          "timeOut": "7000",
          "extendedTimeOut": "1000",
          "showEasing": "swing",
          "hideEasing": "linear",
          "showMethod": "fadeIn",
          "hideMethod": "fadeOut"
        }
    });
    
    //$("#").validate();

    // Close ibox function
    $('.close-link').on('click', function () {
        var content = $(this).closest('div.ibox');
        content.remove();
    });

    // Fullscreen ibox function
    $('.fullscreen-link').on('click', function () {
        var ibox = $(this).closest('div.ibox');
        var button = $(this).find('i');
        $('body').toggleClass('fullscreen-ibox-mode');
        button.toggleClass('fa-expand').toggleClass('fa-compress');
        ibox.toggleClass('fullscreen');
        setTimeout(function () {
            $(window).trigger('resize');
        }, 100);
    });

    // Close menu in canvas mode
    $('.close-canvas-menu').on('click', function () {
        $("body").toggleClass("mini-navbar");
        SmoothlyMenu();
    });

    // Run menu of canvas
    if (slimScroll) {
	    $('body.canvas-menu .sidebar-collapse').slimScroll({
	        height: '100%',
	        railOpacity: 0.9
	    });
    }

    // Open close right sidebar
    $('.right-sidebar-toggle').on('click', function () {
        $('#right-sidebar').toggleClass('sidebar-open');
    });

    // Initialize slimscroll for right sidebar
    if (slimScroll) {
	    $('.sidebar-container').slimScroll({
	        height: '100%',
	        railOpacity: 0.4,
	        wheelStep: 10
	    });
    }

    // Open close small chat
    $('.open-small-chat').on('click', function () {
        $(this).children().toggleClass('fa-comments').toggleClass('fa-remove');
        $('.small-chat-box').toggleClass('active');
    });

    // Initialize slimscroll for small chat
    if (slimScroll) {
	    $('.small-chat-box .content').slimScroll({
	        height: '234px',
	        railOpacity: 0.4
	    });
    }

    // Small todo handler
    $('.check-link').on('click', function () {
        var button = $(this).find('i');
        var label = $(this).next('span');
        button.toggleClass('fa-check-square').toggleClass('fa-square-o');
        label.toggleClass('todo-completed');
        return false;
    });

    // Append config box / Only for demo purpose
    // Uncomment on server mode to enable XHR calls
    //$.get("skin-config.html", function (data) {
    //    if (!$('body').hasClass('no-skin-config'))
    //        $('body').append(data);
    //});

    // Minimalize menu
    $('.navbar-minimalize').on('click', function (event) {
        event.preventDefault();
        $("body").toggleClass("mini-navbar");
        SmoothlyMenu();

    });

    // Tooltips demo
    if ($.fn.tooltip !== undefined) {
	    $('.tooltip-demo').tooltip({
	        selector: "[data-toggle=tooltip]",
	        container: "body"
	    });
    }

    // Full height of sidebar
    function fix_height() {
        var $body = $('body'),
        	$pageWrapper = $('#page-wrapper'),
        	wrapperHeight = $pageWrapper.height(),
        	windowHeight = $(window).height(),
        	$sidebarPanel = $('.sidebar-panel');
        
        if ($sidebarPanel.length) {
        	$sidebarPanel.css("min-height", ($body.children('#wrapper').height() - 61) + "px");
        }

        if ($body.hasClass('page-editor')) {
        	
        	$pageWrapper.css("min-height", windowHeight + "px");
        	
        } else if ($body.hasClass('body-small')) {
        	
        	$pageWrapper.css("min-height", Math.max.apply(Math, [wrapperHeight, windowHeight]) + "px");
        	
        } else {		
	        var navbarheight = $('nav.navbar-default').height();

	        if ($body.hasClass('fixed-nav')) {
	            if (navbarheight > wrapperHeight) {
	                $pageWrapper.css("min-height", navbarheight + "px");
	            } else {
	                $pageWrapper.css("min-height", windowHeight - 60 + "px");
	            }
	        } else {
	        	$pageWrapper.css("min-height", Math.max.apply(Math, [wrapperHeight, windowHeight, navbarheight]) + "px");
	        }
        }
    }

    fix_height();

    // Fixed Sidebar
    if (slimScroll) {
	    $(window).bind("load", function () {
	        if ($("body").hasClass('fixed-sidebar')) {
	            $('.sidebar-collapse').slimScroll({
	                height: '100%',
	                railOpacity: 0.9
	            });
	        }
	    });
    }

    // Move right sidebar top after scroll
    $(window).scroll(function () {
        if ($(window).scrollTop() > 0 && !$('body').hasClass('fixed-nav')) {
            $('#right-sidebar').addClass('sidebar-top');
        } else {
            $('#right-sidebar').removeClass('sidebar-top');
        }
    });

    $(window).bind("load resize scroll", function () {
        //if (!$("body").hasClass('body-small')) {
            fix_height();
        //}
    });

    if ($.fn.popover !== undefined) {
    	$("[data-toggle=popover]").popover();
    }

    // Add slimscroll to element
    if (slimScroll) {
	    $('.full-height-scroll').slimScroll({
	        height: '100%'
	    });
    }
});


// Minimalize menu when screen is less than 768px
$(window).bind("resize", function () {
    if ($(this).width() < 769) {
        $('body').addClass('body-small mini-navbar')
    } else {
        $('body').removeClass('body-small mini-navbar')
    }
});

// Local Storage functions
// Set proper body class and plugins based on user configuration
$(document).ready(function () {
    if (localStorageSupport()) {

        var collapse = localStorage.getItem("collapse_menu");
        var fixedsidebar = localStorage.getItem("fixedsidebar");
        var fixednavbar = localStorage.getItem("fixednavbar");
        var boxedlayout = localStorage.getItem("boxedlayout");
        var fixedfooter = localStorage.getItem("fixedfooter");

        var body = $('body');

        if (fixedsidebar == 'on') {
            body.addClass('fixed-sidebar');
            if ($.fn.slimScroll !== undefined) {
	            $('.sidebar-collapse').slimScroll({
	                height: '100%',
	                railOpacity: 0.9
	            });
            }
        }

        if (collapse == 'on') {
            if (body.hasClass('fixed-sidebar')) {
                if (!body.hasClass('body-small')) {
                    body.addClass('mini-navbar');
                }
            } else {
                if (!body.hasClass('body-small')) {
                    body.addClass('mini-navbar');
                }

            }
        }

        if (fixednavbar == 'on') {
            $(".navbar-static-top").removeClass('navbar-static-top').addClass('navbar-fixed-top');
            body.addClass('fixed-nav');
        }

        if (boxedlayout == 'on') {
            body.addClass('boxed-layout');
        }

        if (fixedfooter == 'on') {
            $(".footer").addClass('fixed');
        }
    }
});

	// check if browser support HTML5 local storage
	function localStorageSupport() {
	    return (('localStorage' in window) && window['localStorage'] !== null)
	}
	
	// For demo purpose - animation css script
	function animationHover(element, animation) {
	    element = $(element);
	    element.hover(
	        function () {
	            element.addClass('animated ' + animation);
	        },
	        function () {
	            //wait for animation to finish before removing classes
	            window.setTimeout(function () {
	                element.removeClass('animated ' + animation);
	            }, 2000);
	        });
	}
	
	function SmoothlyMenu() {
	    if (!$('body').hasClass('mini-navbar') || $('body').hasClass('body-small')) {
	        // Hide menu in order to smoothly turn on when maximize menu
	        $('#side-menu').hide();
	        // For smoothly turn on menu
	        setTimeout(
	            function () {
	                $('#side-menu').fadeIn(400);
	            }, 200);
	    } else if ($('body').hasClass('fixed-sidebar')) {
	        $('#side-menu').hide();
	        setTimeout(
	            function () {
	                $('#side-menu').fadeIn(400);
	            }, 100);
	    } else {
	        // Remove all inline style from jquery fadeIn function to reset menu state
	        $('#side-menu').removeAttr('style');
	    }
	}
	
	// Dragable panels
	function WinMove() {
	    var element = "[class*=col]";
	    var handle = ".ibox-title";
	    var connect = "[class*=col]";
	    $(element).sortable(
	        {
	            handle: handle,
	            connectWith: connect,
	            tolerance: 'pointer',
	            forcePlaceholderSize: true,
	            opacity: 0.8
	        })
	        .disableSelection();
	}
	
	if ('swal' in window && 'close' in window.swal) {
		var swal_close = window.swal.close;
		window.swal.close = function() {
			swal_close();
			window.onkeydown = null;
		};
	}

})(jQuery_Cms, window, document);