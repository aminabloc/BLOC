// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require_tree .
//= require jquery.turbolinks
//= require jquery.avgrund.min


//$(document).ready(function() {
 //   $("button").click(function(event){
   //     $('#background-img').hide();
    //    $('#background-img').css('display','none');
       
   // });
//});


$(document).ready( function () {
    $('#table_id').DataTable();
} );

$(document).ready(function() {
    $(".toggle-student").click(function(event){
        $('#student-login').show();
       $('#company-login').hide();
    });
    $(".toggle-company").click(function(event){
        $('#student-login').hide();
       $('#company-login').show();
    });
});

 $('.background-img').avgrund({
        	width: 380, // max is 640px
        	height: 280, // max is 350px
        	showClose: true, // switch to 'true' for enabling close button
        	showCloseText: '', // type your text for close button
        	closeByEscape: true, // enables closing popup by 'Esc'..
        	closeByDocument: true, // ..and by clicking document itself
        	onBlurContainer: '', // enables blur filter for specified block
        	openOnEvent: false, // set to 'false' to init on load
        });