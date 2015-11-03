//= require jquery
//= require jquery_ujs
//= require foundation
//= require turbolinks
//= require_tree .

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



// functions

// $(document).ready(readyPage)
// $(document).on('page:load', menuHide)



