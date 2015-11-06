$( document ).ready(function() {

  var ticker        = $("#ticker")
  var tickerItems   = $(".ticker_items")

  var newTicker     = $("#ticker_jq")
  var lengthFootage = tickerItems.length

  var count = 0

  ticker.hide()

  if( tickerItems.length > 0 ){
      var i = 0;
      var fn = function(){
          console.log(tickerItems[i])
          newTicker.hide()
          newTicker.html(tickerItems[i])
          newTicker.fadeIn()
          if( ++i < tickerItems.length ){
              setTimeout(fn, 5000);
          }
      };
      fn();
  }

})







