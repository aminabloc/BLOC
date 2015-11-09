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


//$(document).ready(function() {
 //   $("button").click(function(event){
   //     $('#background-img').hide();
    //    $('#background-img').css('display','none');
       
   // });
//});

$
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