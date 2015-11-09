//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .
//= require_self

$(function(){ $(document).foundation(); });

function readyPage (){
  var $menu = $('#menu')
  $menu.hide()
  menuHide()
}

function menuHide(){
  var $menu = $('#menu')
  $menu.hide()
  $('#hamburger').on("click", function(){
    console.log("click")
    $menu.slideToggle()
  })
}