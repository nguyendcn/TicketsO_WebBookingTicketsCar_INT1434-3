(function($) {

    $(document).ready(function() {
        $(".pj-selector-row-count").change(function() {
            var rowCount = Number($(this).find("option:selected").val());
            $(location).attr('href', '/TicketsO/dashboard/users/show/getUserByQuantity?numPerPage=' + rowCount)
        });

        $(".icheckbox_square-green").hover(function() {
            $(this).addClass("hover");
        })
        $(".icheckbox_square-green").mouseleave(function() {
            $(this).removeClass("hover");
        })

        $("thead tr th .icheckbox_square-green").click(function() {
            if ($(this).hasClass("checked")) {
                $(this).removeClass("checked");
                $(($(this).parents().get(1))).removeClass("info");
            } else {
                $(this).addClass("checked");
            }
            $("tbody .icheckbox_square-green").trigger("click");
        });

        $("tbody .icheckbox_square-green").click(function() {
            if ($(this).hasClass("checked")) {
                $(this).removeClass("checked");
                $($(this).parents().get(1)).removeClass("info");
            } else {
                $(this).addClass("checked");
                $($(this).parents().get(1)).addClass("info");
            }
        });

        $("tbody .pj-table-icon-delete").click(function(e) {
            var $this = $(this);
            $tr = $this.closest("tr");


            swal({
                    title: "DELETE",
                    text: "Once deleted, you will not be able to recover this record!",
                    icon: "warning",
                    buttons: true,
                    dangerMode: true,
                    closeModal: true
                })
                .then((willDelete) => {
                    if (willDelete) {
                        $.get($this.attr("value")).done(function(data) {
                            console.log(data);
                            switch (data) {
                                case "OK":
                                    swal("Poof! Your record has been deleted!", {
                                            icon: "success",
                                        })
                                        .then((value) => {
                                            $(location).attr('href', '/TicketsO/dashboard/users/show');
                                        });
                                    break;
                                case "ERR":
                                    if (data.text) {
                                        swal("Error!", data.text, "error");
                                    } else {
                                        swal.close();
                                    }
                            }
                        });

                    } else {
                        swal("Your imaginary file is safe!", { icon: "success" });
                    }
                });
        });
    });

})(jQuery);