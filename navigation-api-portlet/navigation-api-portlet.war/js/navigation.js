(function($){
    $(".gtnQuickstartNavigationPortlet .topmenu").dropdownmenu();

    $(".gtnQuickstartNavigationPortlet .collapsibleToggle").click( function(){
        visibleClass = "visible-element";
        $(this).toggleClass(visibleClass);
        $(".gtnQuickstartNavigationPortlet .topmenu").toggleClass(visibleClass);
    });

})(jQuery);