$(function(){
  $(".like-button").on("click", ajaxLike);
});

function ajaxLike(){
  event.preventDefault();
  var self = $(this);
  var url  = self.attr("href");

  $.ajax({
    url: url,
    type: "post",
    data: "_method=put"
  }).done(function(data){
    if (!data) return false 

    var voteCount = self.parent().find(".vote-count");
    var count = parseInt(voteCount.text());
    count++
    $(voteCount).text(count);
  })
}