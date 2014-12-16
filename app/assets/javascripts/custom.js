;(function($) {
	"use strict";
	var GIATHINH = GIATHINH || {};

	// Check if element exist
	$.fn.exists = function(callback) {
		var args = [].slice.call(arguments, 1);
		if (this.length) {
			callback.call(this, args);
		}
		return this;
	};

	GIATHINH.navigation = function() {
		$('.ht-navbar-toggle').on('click', function(){

			var target = $($(this).data('target'));
			var state = target.css('display');
			$(this).toggleClass('is-open');

			if (state === "block") {
				target.slideUp();
			} else {
				target.slideDown();
			}
		})
	}

	GIATHINH.parallaxStar = function() {
		var createStars = function(target) {
			var i,
				size,
				color,
				width = target.width(),
				height = target.height();
			
			for (i = 1; i <= 60; i++) {
				size = Math.ceil(1*Math.random());
				target.append('<div class="layer star" data-depth="0.20" style="top: ' + Math.round(height*Math.random()) + 'px; left: ' + Math.round(width*Math.random()) + 'px; width: ' + size + 'px; height: ' + size + 'px;"></div>');
			}
			
			for (i = 1; i <= 30; i++) {
				size = Math.ceil(1*Math.random()) + 1;
				target.append('<div class="layer star" data-depth="0.40" style="top: ' + Math.round(height*Math.random()) + 'px; left: ' + Math.round(width*Math.random()) + 'px; width: ' + size + 'px; height: ' + size + 'px;"></div>');
			}
			
			for (i = 1; i <= 15; i++) {
				size = Math.ceil(1*Math.random()) + 2;
				color: 'rgba(255,255,255,.3)';
				// color = 'rgba(' + Math.round(256*Math.random()) + ', ' + Math.round(256*Math.random()) + ', ' + Math.round(256*Math.random()) + ', ' + (Math.round(100*Math.random())/100) + ')';
				target.append('<div class="layer star" data-depth="0.60" style="top: ' + Math.round(height*Math.random()) + 'px; left: ' + Math.round(width*Math.random()) + 'px; width: ' + size + 'px; height: ' + size + 'px; background: ' + color + '; box-shadow: 0px 0px 10px ' + color + ';"></div>');
			}
		}

		var target1 = $('#gt-header.planet');
		createStars(target1);
		// target1.parallax();
	}

	GIATHINH.stickyNav = function() {
		var toTop = $('#gt-main-nav').offset().top;
		if (toTop > 0) {
			$('#gt-main-nav').addClass('sticky');
		} else {
			$('#gt-main-nav').removeClass('sticky');
		}
	}

	$(document).ready( function() {
		GIATHINH.navigation();
		// GIATHINH.parallaxStar();
		$('body').first().remove();
	});

	$(window).load( function() {
	});

	$(window).on( 'resize', function() {
	});

	$(window).on('scroll', function() {
		GIATHINH.stickyNav();
	})

})(jQuery); // EOF