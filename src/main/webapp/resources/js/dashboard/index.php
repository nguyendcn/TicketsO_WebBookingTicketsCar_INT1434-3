if (jQuery_Cms.datagrid !== undefined) {
	jQuery_Cms.extend(jQuery_Cms.datagrid.messages, {
		empty_result: "No records found",
		choose_action: "Choose Action",
		goto_page: "Go to page:",
		//total_prefix: null,
		//total_suffix: null,
		//show: null,
		items_per_page: "Items per page",
		prev_page: "Prev page",
		prev: "&laquo; Prev",
		next_page: "Next page",
		next: "Next &raquo;",
		month_names: ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December'],
		day_names: ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'],
		delete_title: "Delete Confirmation",
		delete_text: "Are you sure you want to delete selected entry?",
		action_title: "Action confirmation",
		btn_ok: "OK",
		btn_cancel: "Cancel",
		btn_delete: "Delete"	});
}

if (jQuery_Cms.multilang !== undefined) {
	jQuery_Cms.extend(jQuery_Cms.multilang.messages, {
		tooltip: "Switch to any language by clicking on its flag and add all attributes."	});
}

if (jQuery_Cms.gallery !== undefined) {
	jQuery_Cms.extend(jQuery_Cms.gallery.messages, {
		alert_restore_title: "Filters\/watermark found!",
		alert_restore_text: "Do you want to restore them?",
		alert_restore_yes: "Yes",
		alert_restore_no: "No",
		alert_success_title: "Good job!",
		alert_warning_title: "Warning!",
		alert_delete_title: "Deleted!",
		alert_refine_text: "The image has been edited!",
		alert_optimize_text: "Image has been optimized!",
		alert_settings_text: "Image settings has been saved!",
		alert_delete_text: "The selected image has been deleted.",
		alert_upload_file_text: "Max number of files has been exceeed.",
		alert_upload_size_text: "Max file size has been exceed.",
		alert_upload_success_text: "Image has been uploaded.",
		btn_delete: "Delete",
		btn_cancel: "Cancel",
		delete_confirmation: "Delete confirmation",
		delete_confirmation_single: "Are you sure you want to delete selected image?",
		edit: "Edit",
		empty_result: "No images uploaded yet.",
		erase: "Delete",
		optimize: "Optimize",
		next: "Next &raquo;",
		prev: "&laquo; Prev",
		refine: "Crop",
		replace: "Replace",
		search_placeholder: "Search by title",
		sort: "Move",
		sort_by: "Sort by",
		show: "Show",
		total_prefix: "of",
		total_suffix: "total",
		upload: "Upload",
		view: "View",
		'created-desc': "Date (Newest to Oldest)",
		'created-asc': "Date (Oldest to Newest)",
		'source_size-asc': "Size (Small to Large)",
		'source_size-desc': "Size (Large to Small)",
		'name-asc': "Title (A-Z)",
		'name-desc': "Title (Z-A)"	});
}

jQuery_Cms.datetimepickerOpts = {
    date_format: "DD/MM/YYYY",
    time_format: "h:mm a",
    week_start: parseInt(1, 10),
    months: ["January","February","March","April","May","June","July","August","September","October","November","December"],
    days: ["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"],
    days_min: ["S","M","T","W","T","F","S"]};

var pjCms = pjCms || {};
pjCms.support = 0;