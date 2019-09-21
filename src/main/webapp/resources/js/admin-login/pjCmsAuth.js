var jQuery_Cms = jQuery_Cms || $.noConflict();
(function ($, undefined) {
	$(function () {
		var $frmLoginAdmin = $("#frmLoginAdmin"),
			$frmForgotAdmin = $("#frmForgotAdmin"),
			$frmProfile = $("#frmProfile"),
			validate = ($.fn.validate !== undefined);
		
		if (validate) {
			$.validator.setDefaults({
				onkeyup: false,
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
					} else {
						error.insertAfter(element);
					}
			    }
			});
		}
		
		if ($frmLoginAdmin.length && validate) {
			$frmLoginAdmin.validate({
				rules: {
					"login_email": {
						required: true,
						email: true
					},
					"login_password": "required"
				}
			});
		}
		
		if ($frmForgotAdmin.length && validate) {
			$frmForgotAdmin.validate({
				rules: {
					"forgot_email": {
						required: true,
						email: true
					}
				}
			});
		}
		
		if ($frmProfile.length && validate) {
			$frmProfile.on('click', '.btn-generate', function () {
				var i, iCnt,
					length = 8,
					pswd = [],
					charset = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!$%@#^&*(){}[]_-+=/|";
				for (i = 0, iCnt = charset.length; i < length; ++i) {
			        pswd.push(charset.charAt(Math.floor(Math.random() * iCnt)));
			    }
				$("#password").val( pswd.join('') );
			}).validate({
				rules: {
					"email": {
						required: true,
						email: true,
						remote: "index.php?controller=pjCmsUsers&action=pjActionCheckEmail&profile"
					}
				},
				onkeyup: false,
				submitHandler: function (form) {
					var l = Ladda.create( $(form).find(":submit").get(0) );
					l.start();
					return true;
				}
			});
		}
	});
})(jQuery_Cms);