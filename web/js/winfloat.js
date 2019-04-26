(function($) {
    jQuery.fn.imgFloat = function(options) {
        var own = this;
        var xD = 0;
        var yD = 0;
        var i = 1;
        var settings = {
            speed: 14,
            xPos: 0,
            yPos: 0
        };
        jQuery.extend(settings, options);
        var ownTop = settings.xPos; //当前位置
        var ownLeft = settings.yPos;
        own.css({
            position: "absolute",
            cursor: "pointer"
        });

        function imgPosition() {   //漂浮的位置
            var winWidth = $(window).width();
            var winHeight = $(window).height();
            if (xD == 0) { //往右
                ownLeft += i;
                own.css({
                    left: ownLeft
                });
                if (ownLeft >= winWidth-850) {
                    ownLeft = winWidth-850;
                    xD = 1;
                }
            }

            if (xD == 1) { //往左
                ownLeft -= i;
                own.css({
                    left: ownLeft
                });
                if (ownLeft <= 0) {
                    xD = 0;
                }

            }
            // // 左右漂浮
            //
            // if (yD == 0) {
            //     ownTop += i;
            //     own.css({
            //         top: ownTop
            //     });
            //     if (ownTop >= winHeight) {
            //         ownTop = winHeight;
            //         yD = 1;
            //     }
            // }
            // if (yD == 1) {
            //     ownTop -= i;
            //     own.css({
            //         top: ownTop
            //     });
            //     if (ownTop <= $(document).scrollTop()) {
            //         yD = 0;
            //     }
            // }
        }
        var imgHover = setInterval(imgPosition, settings.speed);
        own.hover(function() {
                clearInterval(imgHover);
            },
            function() {
                imgHover = setInterval(imgPosition, settings.speed);
            });
    };
})(jQuery);