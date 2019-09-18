<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap User Management Data Table</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link
	href="${pageContext.request.contextPath}/resources/css/custom-style.css"
	rel="stylesheet">
<style type="text/css">
</style>
<script type="text/javascript">
	$(document).ready(function() {
		$('[data-toggle="tooltip"]').tooltip();
		
		$(".pagination #page-next").click(func_nextPageClick);
		$(".pagination #page-previous").click(func_previousPageClick);
		
		$("#records_table tbody tr .delete").click(func_delRecordClick);
	});

	function func_delRecordClick(){
		var aTag = (($(this).parents("tr").get(0)).getElementsByClassName("col-id"));
		var idRecord = $($(aTag).get(0)).text();
		
		func_delRecordById(idRecord);
		
	}

	function func_updatePaging(page, quantityPage){
		$(".pagination").html("");
		
		$(".pagination").append("<li id='page-previous' class='page-item disabled'><a href='#'>Previous</a></li>")
		$("#page-previous").click(func_previousPageClick);
		if(quantityPage <= 5){
			for(var i = 0; i < quantityPage; i++){
				var liTag;
				if(page == (i + 1)){
					liTag = $("<li>").addClass("page-item active");
				} else{
					liTag = $("<li>").addClass("page-item");
				}
				var aTag = $("<a>").prop({"href":"#", "class":"page-link", "text":(i + 1)});
				liTag.click(func_pageClick);
				liTag.append(aTag).appendTo(".pagination");
			}
		}
		var liTag = $("<li>").attr({"id":"page-next", "class":"page-item"});
		
		$(".pagination").append("<li id='page-next' class='page-item'><a href='#' class='page-link'>Next</a></li>");
		$("#page-next").click(func_nextPageClick);
	}
	
	function func_pageClick(){
		var nextPage = parseInt($(this).text(), 10);
		var numPerPage= $("#num-per-page").text();

		func_getRecordsByPage(nextPage, numPerPage);
	}

	function func_nextPageClick(){
		var nextPage = parseInt($(".active").text(), 10) + parseInt(1, 10);
		var numPerPage= $("#num-per-page").text();

		func_getRecordsByPage(nextPage, numPerPage);
	}

	function func_previousPageClick(){
		var nextPage = parseInt($(".active").text(), 10) - parseInt(1, 10);
		var numPerPage= $("#num-per-page").text();

		func_getRecordsByPage(nextPage, numPerPage);
	}

	function func_delRecordById(idRecord){
		$.ajax({
			url: "/TicketsO/api/delRecordById",
			type: "GET",
			data: {
				idRecord : idRecord 
			},
			success: function(value){
				console.log(value);
				func_updateTotalUser();
				func_updateTableBeforeDeleteRecord();
			},
			error: function(value){
				alert(value);
			}
		})
	}

	function func_updateTotalUser(){
		$.ajax({
			url: "/TicketsO/api/getQuantityUser",
			type: "GET",
			data: {},
			success: function(value){
				$("#quantity-object").text(value);
				if(value <= ($("#num-per-page").text())){
					$("#num-per-page").text(value);
				}
			},
			error: function(value){
				alert(value);
			}
		})
	}

	function func_updateTableBeforeDeleteRecord(){
		var page = parseInt($(".active").text(), 10);
		var numPerPage= $("#num-per-page").text();

		func_getRecordsByPage(page, numPerPage);
	}

	function func_getRecordsByPage(page, numPerPage){
	
		var quantityPage = func_calQuantityPage();

		func_removeULPaging();
		
		func_updatePaging(page, quantityPage);
		
		func_setPropNextPreBtn(page, quantityPage);
		
		func_getRecords(page, numPerPage); 
	}

function func_calQuantityPage() {
	var numPerPage= $("#num-per-page").text();
	var quantityObject = parseInt($("#quantity-object").text(), 10);
	var quantityPage = quantityObject / numPerPage ;

	if(quantityObject % numPerPage != 0)
			quantityPage+=1;
	quantityPage = Math.floor(quantityPage);
	return quantityPage;
}
	
	function func_getRecords(page, numPerPage){
		$.ajax({
			url : "/TicketsO/api/getPagingContent",
			type : "GET",
			data : {
				page : page,
				numPerPage : numPerPage,
			},
			success : function(value){
				func_spreadToTable(value);
				return value;
			},
			error: function() {
	            alert("Can not find data records.");
	        }
		})
	}
	
	function func_spreadToTable(data){
		
		func_removeRecordsOnTable();
		
		var data = $.parseJSON(data);
		$.each(data, function (i, item) {
			
			var imgTag = $("<img>").attr({"src":"/examples/images/avatar/1.jpg", 
											"alt":"Avatar", "class":"avatar"});
			var aTagAvatar = $("<a>").prop({"href":"#"});
			aTagAvatar.append(imgTag, item.name);
			
			var spanTagStatus = $("<span>").attr({"class":"status text-danger"});
			spanTagStatus.html("&bull;");
			
			var iTagIconSetting = $("<i>").attr({"class":"material-icons"});
			var iTagIconDelete = $("<i>").attr({"class":"material-icons"});
			iTagIconSetting.html("&#xE8B8;");
			iTagIconDelete.html("&#xE5C9;");
			var aTagSetting = $("<a>").attr({"href":"#", "class":"settings", "title":"Settings", 
											"data-toggle":"tooltip"});
			var aTagDelete = $("<a>").attr({"href":"#", "class":"delete", "title":"Delete", 
											"data-toggle":"tooltip"});
			
			aTagSetting.append(iTagIconSetting);
			// aTagDelete.append(iTagIconDelete).click(function(){
			// 	$(this).parents("tr").remove();
			// })
			aTagDelete.append(iTagIconDelete).click(func_delRecordClick);
			
			var tdTag = $("<td>").prop({"class":"col-id"});

	        $("<tr>").append(
	        tdTag.text(item.id),
	        $("<td>").append(aTagAvatar),
	        $('<td>').text(item.password),
	        $('<td>').text("null"),
	        $('<td>').text(""),
	        $('<td>').append(spanTagStatus, " Active"),
	        $('<td>').append(aTagSetting, aTagDelete)
	        ).appendTo('#records_table');
	    });
	}

	function func_setPropNextPreBtn(currentPage, quantityPage){
		if(quantityPage == 0 || quantityPage == 1){
            $("#page-previous").prop({"class":"page-item disabled"});
            $("#page-next").prop({"class":"page-item disabled"});
			$("#page-previous").off("click");
			$("#page-next").off("click");
        } else{
            if(currentPage == 1){
                $("#page-previous").prop({"class":"page-item disabled"});
				$("#page-previous").off("click");
            } else if(currentPage > 1){
                $("#page-previous").prop({"class":"page-item"});
            }

            if(currentPage == quantityPage){
                $("#page-next").prop({"class":"page-item disabled"});
                $("#page-next").off("click");
               
            } else if(currentPage < quantityPage){
                $("#page-next").prop({"class":"page-item"});
            }
        }
	}
	
	function func_removeULPaging(){
		$(".active").removeClass("active");
		
		$(".pagination li").each(function(){
			$(this).remove();
		});
	}
	
	function func_removeRecordsOnTable(){
		$("#records_table tbody").each(function(){
			$(this).remove();
			
		});
	}

	function codeAddress() {
		func_getRecords(1, 5);

		var quantityPage = func_calQuantityPage();
		func_updatePaging(1, quantityPage);
		func_setPropNextPreBtn(1, quantityPage);
    }
    window.onload = codeAddress;
</script>
</head>
<body>

	<div class="container">
		<div class="table-wrapper">
			<div class="table-title">
				<div class="row">
					<div class="col-sm-5">
						<h2>
							User <b>Management</b>
						</h2>
					</div>
					<div class="col-sm-7">
						<a href="#" class="btn btn-primary"> <i class="material-icons">&#xE147;</i>
							<span>Add New User</span>
						</a> <a href="#" class="btn btn-primary"> <i
							class="material-icons">&#xE24D;</i> <span>Export to Excel</span>
						</a> <a id="btn-get-records-page" href="#" class="btn btn-primary">
							<span>Click Here</span>
						</a>
					</div>
				</div>
			</div>
			<div id="dynamic-table">
				<table id="records_table" class="table table-striped table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>User Name</th>
							<th>Password</th>
							<th>Date Created</th>
							<th>Role</th>
							<th>Status</th>
							<th>Action</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${listUser}" var="element">
							<tr>
								<td>${element.id}</td>
								<td><a href="#"><img
										src="/examples/images/avatar/1.jpg" class="avatar"
										alt="Avatar">${element.name}</a></td>
								<td>${element.password}</td>
								<td>null</td>
								<td></td>
								<td><span class="status text-success">&bull;</span> Active</td>
								<td><a href="#" class="settings" title="Settings"
									data-toggle="tooltip"><i class="material-icons">&#xE8B8;</i></a>
									<a href="#" class="delete" title="Delete" data-toggle="tooltip"><i
										class="material-icons">&#xE5C9;</i></a></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
			<div class="clearfix">
				<div class="hint-text">
					Showing <b id="num-per-page">${num_per_page}</b> out of <b
						id="quantity-object">${quantity}</b> entries
				</div>
				<ul class="pagination">
					<li id="page-previous" class="page-item disabled"><a href="#">Previous</a></li>
					<li id="page-next" class="page-item"><a href="#"
						class="page-link">Next</a></li>
				</ul>
			</div>
		</div>
	</div>
</body>

<script type="text/javascript">

</script>

</html>
