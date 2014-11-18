$(function () {
    $('body').removeClass('js-disabled').addClass('js-enabled');
    $("#contact_form, #project_planner, #comment_form, #color_bookmark_form").validate();
    $(".work li").workUp();
    $(".gowalla_map").initMultiMap();
    $(".norfolk_map").norfolkMap();
    $("#category_filter a").ajaxFilter();
    $("#project_planner").formHelp();
    $("#work_gallery_images a").workGallery();
    $("a#phone_pandr").blankLink();
    $(".foot_plan_link").highlightProjectPlan();
    $("#mailingList").reinstateDefault();
    $('#body_home .banner_scroll').homeSlider();
    $(".zoom").imgZoomSingle();
});

// Multiple markers on a map
$.fn.norfolkMap = function () {
    return this.each(function () {
        var container = $(this);
        var map_coords = JSON.parse($(this).attr("data-coords"));

        if (container.length && map_coords.length) {
            container.addClass('enabled');
            var map;
            function initialize() {
                var latlng = new google.maps.LatLng(52.6547, 1.0355);
                var myOptions = {
                    zoom: 9,
                    center: latlng,
                    panControl: false,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                }
                map = new google.maps.Map(container.get(0), myOptions);
            }
            initialize();

            function codeAddress(latitude, longitude, name, spot_url, checkin_date, spot_image) {
                var location = new google.maps.LatLng(latitude, longitude);
                var image = new google.maps.MarkerImage(spot_image,
					new google.maps.Size(100, 100),
					new google.maps.Point(0, 0),
					new google.maps.Point(0, 35),
					new google.maps.Size(50, 50)
				);
                var marker = new google.maps.Marker({
                    map: map,
                    icon: image,
                    position: location,
                    title: name
                });

                var contentString = "<h2 class='spot_name'><a href='http://www.gowalla.com" + spot_url + "' title='" + name + "'>" + name + "</a></h2><p class='spot_seen'>Seen here on: " + checkin_date + "</p>";
                var infowindow = new google.maps.InfoWindow({
                    content: contentString,
                    maxWidth: 200
                });

                google.maps.event.addListener(marker, 'click', function () {
                    infowindow.open(map, marker);
                });
            }

            $.each(map_coords, function () {
                var link = $(this);
                codeAddress(link[0], link[1], link[2], link[3], link[4], link[5]);
            });
        }
    });
}

$.fn.imgZoomSingle = function () {
    return this.each(function () {
        $(this).colorbox({ opacity: 0.8 });
    });
}

$.fn.reinstateDefault = function () {
    return this.each(function () {
        var emailInput = $("#nkykjt-nkykjt", this);
        var defaultValue = emailInput.val();
        var defaultMessage = "Your email address…";
        emailInput.focus(function () {
            if ($(this).val() == defaultMessage) {
                $(this).val("");
            }
        });
        emailInput.blur(function () {
            if ($(this).val() == "") {
                $(this).val(defaultMessage);
            }
        });
    })
}

$.fn.highlightProjectPlan = function () {
    return this.each(function () {
        $(this).hover(function () {
            $("#foot_planner span").addClass("hover");
        }, function () {
            $("#foot_planner span").removeClass("hover");
        });
    })
}

$.fn.blankLink = function () {
    return this.each(function () {
        $(this).click(function () {
            return false;
        });
    })
}

$.fn.homeSlider = function () {
    return this.each(function (index) {
        var SCROLL_TIME = 500;
        var SCROLL_DELAY = 8000;
        var timer;
        var controls = $('#controls');
        var container = $(this);
        var items = $(this).children();
        var itemsLength = items.length;
        var banner = $("#banner");

        banner.append("<div class='container'><ul id='controls'></ul></div>");
        var controls = $("#controls");
        items.each(function (index) {
            if (index == 0) {
                controls.append("<li><a href='#' rel='" + index + "' class='current'><span>" + (index + 1) + "</span></a></li>");
            } else {
                controls.append("<li><a href='#' rel='" + index + "'><span>" + (index + 1) + "</span></a></li>");
            }
        });

        var currentDeats = function () {
            var currentItem = $(".current", container);
            var currentItemIndex = items.index(currentItem);
            var nextItemIndex = currentItemIndex == (itemsLength - 1) ? 0 : currentItemIndex + 1;
            var currentItem = items.eq(currentItemIndex);
            var nextItem = items.eq(nextItemIndex);
            var control = $("a", controls.children().eq(nextItemIndex));
            changeSlide(currentItem, nextItem, control);
        };

        var changeSlide = function (currentItem, nextItem, control) {
            nextItem.fadeIn(1000, function () {
                currentItem.removeClass("current");
                $(this).addClass("current");
            });
            $("a.current", controls).removeClass("current");
            control.addClass("current");
            currentItem.fadeOut();
        };

        $('a', controls).click(function () {
            window.clearInterval(timer);
            var currentItem = $(".current", container);
            var nextItem = items.eq(parseInt($(this).attr('rel'), 10));
            changeSlide(currentItem, nextItem, $(this));
            return false;
        });

        $("#banner").hover(function () {
            window.clearInterval(timer);
        }, function () {
            timer = window.setInterval(currentDeats, SCROLL_DELAY);
        });

        timer = window.setInterval(currentDeats, SCROLL_DELAY);
    });
};

$.fn.workGallery = function () {
    return this.each(function (index) {
        var myIndex = index;
        $(this).click(function () {
            var current = $("a.current", "#work_gallery_images");
            current.removeClass("current");
            $(this).addClass("current");
            $("#works_gallery_main li.current").removeClass("current");
            $("#works_gallery_main li").eq(myIndex).addClass("current");
            return false
        });
    });
}

$.fn.formHelp = function () {
    var inputs = $("#project_planner input, #project_planner textarea");
    var divs = $("#project_planner .head");
    inputs.each(function () {
        $(this).focus(function () {
            $(this).next(".helper").addClass("active");
        });
        $(this).blur(function () {
            $(this).next(".helper").removeClass("active");
        });
    });
    divs.each(function () {
        var helper = $(".helper", this);
        helper.removeClass("active");
        $(this).mouseover(function () {
            if (helper.not("active")) {
                helper.addClass("active");
            }
        }).mouseout(function () {
            if (helper.prev("input, textarea").is(":focus") == false) {
                helper.removeClass("active");
            }
        });
    });
}

// Multiple markers on a map
$.fn.initMultiMap = function () {
    return this.each(function () {
        var container = $(this);
        var map_coords = JSON.parse($(this).attr("data-coords"));

        if (container.length && map_coords.length) {
            container.addClass('enabled');
            var map;
            function initialize() {
                var latlng = new google.maps.LatLng(map_coords[0][0], map_coords[0][1]);
                var myOptions = {
                    zoom: 13,
                    center: latlng,
                    panControl: false,
                    mapTypeId: google.maps.MapTypeId.ROADMAP
                }
                map = new google.maps.Map(container.get(0), myOptions);
            }
            initialize();

            function codeAddress(latitude, longitude, name, spot_url, checkin_date, spot_image) {
                var location = new google.maps.LatLng(latitude, longitude);
                var image = new google.maps.MarkerImage(spot_image,
					new google.maps.Size(100, 100),
					new google.maps.Point(0, 0),
					new google.maps.Point(0, 35),
					new google.maps.Size(70, 70)
				);
                var marker = new google.maps.Marker({
                    map: map,
                    icon: image,
                    position: location,
                    title: name
                });

                var contentString = "<h2 class='spot_name'><a href='http://www.gowalla.com" + spot_url + "' title='" + name + "'>" + name + "</a></h2><p class='spot_seen'>Seen here on: " + checkin_date + "</p>";
                var infowindow = new google.maps.InfoWindow({
                    content: contentString,
                    maxWidth: 200
                });

                google.maps.event.addListener(marker, 'click', function () {
                    infowindow.open(map, marker);
                });
            }

            $.each(map_coords, function () {
                var link = $(this);
                codeAddress(link[0], link[1], link[2], link[3], link[4], link[5]);
            });
        }
    });
}

$.fn.workUp = function () {
    $(this).live('mouseenter mouseleave', function (event) {
        var panel = $('.work_info', $(this));
        if (event.type == 'mouseenter') {
            panel.animate({ top: 0 }, 400, 'swing')
        } else {
            panel.animate({ top: '198px' }, 400, 'swing')
        }
    });
}

$.fn.submitWithAjax = function () {
    this.submit(function () {
        $.post(this.action, $(this).serialize(), null, "script");
        return false;
    })
    return this;
}

$.fn.ajaxFilter = function () {
    $(this).live("click", function () {
        $("html, body").animate({ scrollTop: $("#work_sub_nav").offset().top }, 'slow');
        $(".loading").addClass("show");
        $.get(this.href, null, null, "script");
        return false;
    });
};