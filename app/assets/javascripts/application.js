// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//

//= require activestorage
//= require turbolinks
//= require jquery3
//= require jquery_ujs
//= require popper
//= require bootstrap-sprockets

//= require_tree .

import '/jquerys/src/core';

$(document).ready(function() {
  $('a[href^=\'#\']').click(function(e) {
    var position;
    e.preventDefault();
    position = $($(this).attr('href')).offset().top;
    $('body, html').animate({
      scrollTop: position
    }, 2000);
  });
});

$(function() {
  var hamburger = document.getElementById('hamburger');
  
  $(hamburger).click(function() {
    $(this).toggleClass('is-active');
  })
})


