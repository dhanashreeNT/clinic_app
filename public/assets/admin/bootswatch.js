!function(){function n(n){var t=n.split(/\n/);t.shift(),t.splice(-1,1);var o=t[0].length-t[0].trim().length,a=new RegExp(" {"+o+"}");return t=t.map(function(n){return n.match(a)&&(n=n.substring(o)),n}),t=t.join("\n")}$(window).scroll(function(){var n=$(document).scrollTop();$(".splash").css({"background-position":"0px -"+(n/3).toFixed(2)+"px"}),n>50?$("#home > .navbar").removeClass("navbar-transparent"):$("#home > .navbar").addClass("navbar-transparent")});var t=$("<div id='source-button' class='btn btn-primary btn-xs'>&lt; &gt;</div>").click(function(){var t=$(this).parent().html();t=n(t),$("#source-modal pre").text(t),$("#source-modal").modal()});$('.bs-component [data-toggle="popover"]').popover(),$('.bs-component [data-toggle="tooltip"]').tooltip(),$(".bs-component").hover(function(){$(this).append(t),t.show()},function(){t.hide()})}();