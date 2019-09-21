var jQuery_Cms = jQuery_Cms || $.noConflict();
(function ($, undefined) {
	"use strict";

	var player;

	function pjStorage() {
		if (!(this instanceof pjStorage)) {
			return new pjStorage();
		}
		this.length = sessionStorage.length;
		
		var i, iCnt, key;
		for (i = 0, iCnt = this.length; i < iCnt; i += 1) {
			key = this.key(i);
			this[key] = this.getItem(key);
		}
	}
	
	pjStorage.prototype = (function () {
		// private
		var store = sessionStorage;
		// public
		return {
			clear: function() {
				for (var i = 0, iCnt = this.length; i < iCnt; i += 1) {
					delete this[this.key(i)];
				}
				this.length = 0;
				
				return store.clear();
			},
			getItem: function(key) {
				return store.getItem(key);
			},
			key: function(index) {
				return store.key(index);
			},
			removeItem: function(key) {
				if (null !== this.getItem(key)) {
					this.length -= 1;
					delete this[key];
				}
				
				return store.removeItem(key);
			},
			setItem: function (key, value) {
				
				if (window.pjCms && pjCms.support && /^kb2-(categories|category-|question-|query-)/.test(key)) {
					return;
				}
				
				if (null === this.getItem(key)) {
					this.length += 1;
				}
				this[key] = value;
				
				return store.setItem(key, value);
			}
		}
	})();
	
	var myStorage = new pjStorage();
	
	function getOrigin() {
		
		if (typeof document.location.origin !== "undefined") {
			return document.location.origin;
		}
		
		if (typeof document.defaultView.location.origin !== "undefined") {
			return document.defaultView.location.origin;
		}
		
		return document.location.protocol + "//" + document.location.host;
	}

	function loadYouTubeIframePlayerAPI() {
		//2. This code loads the IFrame Player API code asynchronously.
		var id = "yt-iframe-player-api";
		if (document.getElementById(id)) {
			// already loaded
			return;
		}
		
		var tag = document.createElement("script");
		tag.src = "http://www.youtube.com/iframe_api";
		tag.id = id;
		var firstScriptTag = document.getElementsByTagName("script")[0];
		firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
	}
	
	function createYouTubeIframe() {
		
		var $el = $("#yt-player");
		if (!$el.length) {
			return;
		}
		
		player = new YT.Player("yt-player", {
			height: 480,
			width: "100%",
			videoId: $el.data("id"),
			playerVars: {
				rel: 0,
				origin: getOrigin()
			},
			events: {
				"onReady": onPlayerReady,
				"onStateChange": onPlayerStateChange
			}
		});
	}

	function onPlayerReady(event) {
		
		var started = false,
			str = myStorage.getItem("kb2-paused-video");
		if (str) {
			var obj = JSON.parse(str);
			var data = event.target.getVideoData();
			if (obj.id == data.video_id) {
				event.target.seekTo(obj.seconds);
				onResume();
				started = true;
			}
		}

		if (!started) {
			event.target.playVideo();
		}
	}
	
	function onPlayerStateChange(event) {
		
		if (event.data === YT.PlayerState.PAUSED) {
			onPause();
		} else {
			onResume();
		}
	}
	
	function onPause() {
		
		var data = player.getVideoData();
		
		myStorage.setItem("kb2-paused-video", JSON.stringify({
			category: myStorage.getItem("kb2-current-category"),
			question: myStorage.getItem("kb2-current-question"),
			seconds: player.getCurrentTime(),
			id: data.video_id
		}));
		
		hideResumeLabel();
		
		showResumeLabel();
	}
	
	function onResume() {
		myStorage.removeItem("kb2-paused-video");
		
		hideResumeLabel();
	}
	
	function hideResumeLabel() {
		$right_sidebar_category.find(".sidebar-message-inner .text-warning").addClass("hidden");
	}
	
	function showResumeLabel() {
		var str = myStorage.getItem("kb2-paused-video");
		if (str) {
			var obj = JSON.parse(str);
			$right_sidebar_category.find('.sidebar-message-inner[data-id="' + obj.question.split("-")[2] + '"]').find(".text-warning").removeClass("hidden");
		}
	}		

	function pauseVideo() {
		
		player.pauseVideo();
	}
	
	if ($(".right-sidebar-toggle-main").length) {
		
		var loaded = false;
		var $right_sidebar_main;
		var $right_sidebar_category;
		var $right_sidebar_results;

		$(window).on("scroll", function () {
			
			if ($right_sidebar_main === undefined || $right_sidebar_category === undefined) {
				return;
			}
			
			if ($(this).scrollTop() > 0 && !$("body").hasClass("fixed-nav")) {
				$right_sidebar_main.addClass("sidebar-top");
				$right_sidebar_category.addClass("sidebar-top");
			} else {
				$right_sidebar_main.removeClass("sidebar-top");
				$right_sidebar_category.removeClass("sidebar-top");
			}
		});
		
		function toggleSidebar() {
			
			if ($right_sidebar_category.hasClass("sidebar-open") || $right_sidebar_results.hasClass("sidebar-open")) {
				$right_sidebar_category.removeClass("sidebar-open");
				$right_sidebar_results.removeClass("sidebar-open");
				$right_sidebar_main.removeClass("sidebar-open");
			} else {
				$right_sidebar_main.toggleClass("sidebar-open");
				
				var last = myStorage.getItem("kb2-last-category");
				if (last) {
					$right_sidebar_main.find('.sidebar-message-inner[data-key="' + last + '"]').trigger("click");
				}
			}
		}
		
		function initSidebar() {
			
			$right_sidebar_main = $("#right-sidebar-main");
			$right_sidebar_category = $("#right-sidebar-category");
			$right_sidebar_results = $("#right-sidebar-results");
			
			initScroll("#right-sidebar-main");
		}
		
		function initScroll(context) {
			
			if ($.fn.slimScroll === undefined) {
				return;
			}
			
			$(context).find(".sidebar-container").slimScroll({
				height: "100%",
				railOpacity: 0.4,
				wheelStep: 10
			});
		}
		
		function showSidebarInner() {
			
			$right_sidebar_main.removeClass("sidebar-open");
			$right_sidebar_category.addClass("sidebar-open");
			
			showResumeLabel();
		}
		
		function hideSidebarInner() {
			
			$right_sidebar_main.addClass("sidebar-open");
			$right_sidebar_category.removeClass("sidebar-open");
		}
		
		function showSearchResults() {
			
			$right_sidebar_main.removeClass("sidebar-open");
			$right_sidebar_results.addClass("sidebar-open");
		}
		
		function hideSearchResults() {
			
			$right_sidebar_main.find("input[name='q']").val("");
			$right_sidebar_results.removeClass("sidebar-open");
			$right_sidebar_main.addClass("sidebar-open");
		}
		
		$(document).on("click", ".right-sidebar-toggle-main", function (e) {
			
			e.preventDefault();
			
			var current = myStorage.getItem("kb2-current-category");
			if (current) {
				myStorage.removeItem("kb2-current-category");
				myStorage.setItem("kb2-last-category", current);
			}
			
			var kb2_categories = myStorage.getItem("kb2-categories");
			
			if (!loaded) {
				
				if (!kb2_categories) { 
					
					$.get("index.php?controller=pjCmsHelp&action=pjActionGetKbase").done(function (data) {
						$("#wrapper").append(data);
						loaded = true;
						
						initSidebar();
						toggleSidebar();
						
						myStorage.setItem("kb2-categories", data);
					});
				} else {
					$("#wrapper").append(kb2_categories);
					loaded = true;
					
					initSidebar();
					toggleSidebar();
				}
				
			} else {
				toggleSidebar();
			}

		}).on("shown.bs.tab", '#right-sidebar-main a[data-toggle="tab"]', function (e) {
			
			myStorage.setItem("kb2-current-tab", $(this).attr("href"));
			
		}).on("click", "#right-sidebar-main .sidebar-message-inner", function (e) {
			
			e.preventDefault();
			
			var $this = $(this),
				category_id = $this.data("id"),
				idx = "kb2-category-" + category_id,
				kb2_category = myStorage.getItem(idx);
			
			myStorage.removeItem("kb2-last-category");
			myStorage.setItem("kb2-current-category", idx);
			
			loadYouTubeIframePlayerAPI();
			
			if (!kb2_category) {
				
				$.get("index.php?controller=pjCmsHelp&action=pjActionGetKbase", {
					"category_id": category_id,
					"tab": $this.data("tab")
				}).done(function (data) {
					
					myStorage.setItem(idx, data);
					
					$right_sidebar_category.html(data);
					
					initScroll("#right-sidebar-category");
					showSidebarInner();
				});
				
			} else {
				
				$right_sidebar_category.html(kb2_category);
				
				initScroll("#right-sidebar-category");
				showSidebarInner();
			}
			
		}).on("click", ".sidebar-container-back", function (e) {

			e.preventDefault();
			
			hideSidebarInner();
			hideSearchResults();
			
			myStorage.removeItem("kb2-current-category");
		
		}).on("click", ".btn-kbase2-doit", function (e) {
	   
			pauseVideo();
			
			var href = $(this).attr("href");
			
			window.setTimeout(function () {
				var str = myStorage.getItem("kb2-paused-video");
				if (str) {
					var obj = JSON.parse(str);
					obj.doit = href;
					obj.tab = myStorage.getItem("kb2-current-tab");
					myStorage.setItem("kb2-paused-video", JSON.stringify(obj));
				} else {
					console.log("need more time");
				}
			}, 100);
			
			var uri = window.location.pathname + window.location.search;
			if (uri.indexOf(href) !== -1) {
				e.preventDefault();
				$("#modalKbase2").modal("hide");
			} else {
				return true;
			}
			
		}).on("click", ".kb2-related-question", function (e) {
			
			var $modal = $("#modalKbase2");
			
			$modal.data("id", $(this).data("id"));
			
			window.setTimeout(function () {
				$modal.modal("show");
			}, 1000);
			
		}).on("hidden.bs.modal", "#modalKbase2", function (e) {
			
			if (player) {
				player.destroy();
				player = undefined;
			}
			
			myStorage.removeItem("kb2-current-question");
			
			$(this).find(".modal-content").empty();
			
		}).on("show.bs.modal", "#modalKbase2", function (e) {
			var $modal = $(this),
				$target = $(e.relatedTarget),
				question_id = $target.length ? $target.data("id") : $modal.data("id"),
				idx = "kb2-question-" + question_id;
			
			myStorage.setItem("kb2-current-question", idx);
			
			var kb2_question = myStorage.getItem(idx);
			
			var fixSize = function () {
				if (Number($modal.find(".modal-body").data("lg")) === 1) {
					$modal.find(".modal-dialog").removeClass("modal-setup-guide-single");
				} else {
					$modal.find(".modal-dialog").addClass("modal-setup-guide-single");
				}
			};
			
			if (!kb2_question) { 
				
				$.get("index.php?controller=pjCmsHelp&action=pjActionGetKbase", {
					"question_id": question_id
				}).done(function (data) {
					
					myStorage.setItem(idx, data);
					
					$modal.find(".modal-content").html(data);
					
					createYouTubeIframe();
					
					fixSize();
				});
				
			} else {
				$modal.find(".modal-content").html(kb2_question);
				
				createYouTubeIframe();
				
				fixSize();			
			}

		}).on("submit", ".setup-guide-search", function (e) {
			e.preventDefault();
			var idx,
				$form = $(this),
				q = $form.find('input[name="q"]').val().trim();
			
			if (!q.length) {
				hideSearchResults();
				return false;
			}
			
			idx = "kb2-query-" + btoa(q);
			
			var kb2_query = myStorage.getItem(idx);
			
			if (!kb2_query) {
				
				$.get("index.php?controller=pjCmsHelp&action=pjActionGetKbase", {
					"q": q
				}).done(function (data) {
					
					myStorage.setItem(idx, data);

					$right_sidebar_results.html(data);
				
					initScroll("#right-sidebar-results");
					showSearchResults();
				});
				
			} else {
				$right_sidebar_results.html(kb2_query);
				
				initScroll("#right-sidebar-results");
				showSearchResults();
			}
			
			return false;
		});
	}
	
	$(function () {
	
		myStorage.removeItem("kb2-current-tab");
		myStorage.removeItem("kb2-current-question");
		myStorage.removeItem("kb2-current-category");
		myStorage.removeItem("kb2-last-category");
		
		var str = myStorage.getItem("kb2-paused-video");
		if (str) {
			var obj = JSON.parse(str);
			var uri = window.location.pathname + window.location.search;
			if (obj.doit && uri.indexOf(obj.doit) !== -1) {
				// open sidebar
				$(".right-sidebar-toggle-main").trigger("click");
				// show tab
				$('#right-sidebar-main a[href="' + obj.tab + '"]').tab("show");
				// select category
				$('.sidebar-message-inner[data-key="' + obj.category + '"]').trigger("click");
			}
		}
	
	});
	
})(jQuery_Cms);