/*

Template:  Resta resturant template
Template URI: http://hastech.company/
Description: This is html5 template
Author: Hastech
Author URI: http://hastech.company/
Version: 1.0

*/
/*================================================
[  Table of contents  ]
================================================
	01. jQuery MeanMenu
	02. Searchbar active
    03. stickey menu
    04. Nivo slider activation
    05. Isotope activation
    0.6 MagnificPopup activation
    08.  Counter Up
    0.9 Accordion
    10. slick carousel
    11. You tube video active
    12. Parallax active
    13. wow js active
    14. scrollUp jquery active
    15. Preloader
======================================
[ End table content ]
======================================*/


(function($) {
    "use strict";

    /*-------------------------------------------
         01. img random
     --------------------------------------------- */

    $('.imgsrc').src="images/food/"+getRandomNum()+".png";



})(jQuery);

function getRandomNum() {
    var min = 1//这里改成你需要的最小值
    var max = 10//这里改成你需要的最大值
    return Math.floor(Math.random() * (max - min + 1) + min)
}