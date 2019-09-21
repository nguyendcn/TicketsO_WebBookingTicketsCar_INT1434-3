var jQuery_Cms = jQuery_Cms || $.noConflict();
(function ($, undefined) {
	$(function () {
		"use strict";
		
		var validate = ($.fn.validate !== undefined),
			$contactMsgForm = $("#contactMsgForm");
		
		if (validate) {
			$.validator.setDefaults({
				highlight: function(element) {
					$(element).closest('.form-group').addClass('has-error');
				},
				unhighlight: function(element) {
					$(element).closest('.form-group').removeClass('has-error');
				},
				errorElement: 'span',
				errorClass: 'help-block',
				errorPlacement: function(error, element) {
					if (element.parent('.input-group').length) {
						error.insertAfter(element.parent());
					} else if (element.parent().parent('.btn-group').length) {
						error.insertAfter(element.parent().parent());
					} else {
						error.insertAfter(element);
					}
				}
			});
		}
		
		if ($contactMsgForm.length && validate) {
			$contactMsgForm.validate({
				rules: {
					question: "required"
				},
				submitHandler: function (form) {
					var $form = $(form),
						$btn = $form.find(":button").prop("disabled", true);
					$.post("index.php?controller=pjCmsSettings&action=pjActionAjaxContact", $form.serialize()).done(function (data) {
						if (data && data.status && data.status === "OK") {
							$form.closest(".modal").modal("hide");
							swal("Success!", data.text, "success");
						} else {
							swal("Error!", data.text, "warning");
						}
					}).always(function () {
						$btn.prop("disabled", false);
					});
					return false;
				}
			});	
		}

		$.ajaxSetup({
			error: function (jqXHR, textStatus, errorThrown) {
				if (jqXHR.status === 403) {
					window.location.href = jqXHR.getResponseHeader('X-VEVS-Login');
				}
			}
		});

		/* Toggle hidden form groups when radio is changed */

		function toggleGroup () {
			var $this = $(this),
				id = $this.attr('id'),
				$section = $this.parents('.hidden-form-holder'),
				$form_hidden_container = $section.find('.form-hidden-container');

			$form_hidden_container.hide();

			$(".hidden-element").each(function () {
				var $element = $(this);

				if ($element.data('element-id') === id) {
					$element.parents('.form-group-holder').find('.hidden-element').hide();
					$element.show();
				}
			});

			if ($this.parent().hasClass('show-hidden-container')) {
				$form_hidden_container.show();
			} else {
				$form_hidden_container.hide();
			}
			
			$section.find(".hidden-element:hidden :input").prop("disabled", true);
			$section.find(".hidden-element:visible :input").prop("disabled", false);
		}
		
		$('.form-group-holder .radio input').on("change", function () {
			$(this).parents('.form-group-holder').find('.hidden-element').hide();
			toggleGroup.call(this);
		});
		
		$('.form-group-holder .radio input:checked').each(function () {
			toggleGroup.call(this);
		});		
	});
})(jQuery_Cms);