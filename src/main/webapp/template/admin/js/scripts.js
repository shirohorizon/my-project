/*!
    * Start Bootstrap - SB Admin v6.0.0 (https://startbootstrap.com/templates/sb-admin)
    * Copyright 2013-2020 Start Bootstrap
    * Licensed under MIT (https://github.com/BlackrockDigital/startbootstrap-sb-admin/blob/master/LICENSE)
    */
    (function($) {
    	
    	var editor = '';
        $(document).ready(function () {
            editor = CKEDITOR.replace('content');
        });
        
        $('#btnAddOrUpdateNew').click(function (e) {
            e.preventDefault();
            var data = {};
            var formData = $('#formSubmit').serializeArray();
            $.each(formData, function (i, v) {
                data[""+v.name+""] = v.value;
            });
            data["content"] = editor.getData();
            var id = $('#id').val();
            if (id == "") {
                addNew(data);
            } else {
                updateNew(data);
            }
        });
        function addNew(data) {
            $.ajax({
                url: '/api-admin-news',
                type: 'POST',
                contentType: 'application/json',
                data: JSON.stringify(data),
                dataType: 'json',
                success: function (result) {
                	window.location.href = "/admin-news?type=edit&id="+result.id+"&message=insert_success";
                },
                error: function (error) {
                	window.location.href = "/admin-news?type=list&maxPageItem=2&page=1&message=error_system";
                }
            });
        }
        function updateNew(data) {
            $.ajax({
                url: '/api-admin-news',
                type: 'PUT',
                contentType: 'application/json',
                data: JSON.stringify(data),
                dataType: 'json',
                success: function (result) {
                	window.location.href = "/admin-news?type=edit&id="+result.id+"&message=update_success";
                },
                error: function (error) {
                	window.location.href = "/admin-news?type=list&maxPageItem=2&page=1&message=error_system";
                }
            });
        }
    "use strict";

    // Add active state to sidbar nav links
    var path = window.location.href; // because the 'href' property of the DOM element is the absolute path
        $("#layoutSidenav_nav .sb-sidenav a.nav-link").each(function() {
            if (this.href === path) {
                $(this).addClass("active");
            }
        });

    // Toggle the side navigation
    $("#sidebarToggle").on("click", function(e) {
        e.preventDefault();
        $("body").toggleClass("sb-sidenav-toggled");
    });
})(jQuery);
    
    
