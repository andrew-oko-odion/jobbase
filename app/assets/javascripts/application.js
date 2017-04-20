// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
// require semantic-ui
//= require social-share-button
//= require tether

//= require skrollr
//= require skrollr.ie
//= require skrollr.menu
//= require skrollr.stylesheets
//= require typeahead

/* drop down setting 
 $('.ui .dropdown')
  .dropdown({
      direction: 'downward'
  })
;
*/

$("#headernav.item").on('click', function(){
    $(this).addClass('active');
});


$('.item').click(function(){
   $('.active').removeClass('active');
   $(this).addClass('active');
});

// $( document ).ready(function() {
    
// hide spinner
//  $(".loader").hide();

    $(document).on("page:fetch", function(){
	$(".loader").show();
    });
    $(document).on("page:receive", function(){
	$(".loader").hide();
    });
    
// });
