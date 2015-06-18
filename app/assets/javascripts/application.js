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
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function(){

  firstLink = $('.one-link').first();
  $('.row.board-name').on('click','h3', function(){
    $(firstLink).toggleClass('highlight');
  }); // click on boards name

  counter = 0
  $('header').on('click', function(){
    counter += 1;
    if (counter > 1) {
      console.log("You clicked the header " + counter + " times.");
    } else {
      console.log("You clicked the header " + counter + " time.");
    }
  }); // click on header

}); //doc
