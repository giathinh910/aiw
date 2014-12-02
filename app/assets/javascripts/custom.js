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

			var navBarAnimate = function(rangeLeft,speed) {
				target.stop().animate(
					{
						left: rangeLeft,
					},
					speed,
					function() {}
				)
			}

			$(this).toggleClass('is-open');

			if (target.hasClass('is-open')) {
				navBarAnimate(-330,200);
				target.removeClass('is-open');
			} else {
				navBarAnimate(0,200);
				target.addClass('is-open');
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
			
			for (i = 1; i <= 150; i++) {
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

		var target1 = $('#gt-header');
		createStars(target1);
		target1.parallax();
	}

	$(document).ready( function() {
		GIATHINH.navigation();
		GIATHINH.parallaxStar();
		$('body').first().remove();
	});

	$(window).load( function() {
	});

	$(window).on( 'resize', function() {
	});

})(jQuery); // EOF