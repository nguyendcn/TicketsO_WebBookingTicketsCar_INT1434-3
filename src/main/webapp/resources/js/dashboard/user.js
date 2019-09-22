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
                title: "Delete confirmation",
                text: "Are you sure you want to delete selected record?",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "Delete",
                cancelButtonText: "Cancle",
                closeOnConfirm: false,
                showLoaderOnConfirm: true
            }, function() {
                $.post($this.attr("href")).done(function(data) {
                    if (!(data && data.status)) {
                        console.log($this.attr("href"));
                        return;
                    }
                    switch (data.status) {
                        case "OK":
                            $tr.css("backgroundColor", "#FFB4B4").fadeOut("slow", function() {
                                self._loadDatagrid.call(self, target, inst.settings.dataUrl, inst.settings.content.column, inst.settings.content.direction, inst.settings.content.page, inst.settings.content.rowCount);
                                swal.close();
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
            });
        });
    });

})(jQuery);