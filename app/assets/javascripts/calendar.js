$(document).ready(function(){
  $('.day_calendar').hide();
  $('.week_calendar').hide();
  $('.month_calendar').hide();

  $('#day').click(function(){
    $('.day_calendar').show();
    $('.week_calendar').hide();
    $('.month_calendar').hide();
  });
  $('#week').click(function(){
    $('.week_calendar').show();
    $('.day_calendar').hide();
    $('.month_calendar').hide();
  });
  $('#month').click(function(){
    $('.month_calendar').show();
    $('.day_calendar').hide();
    $('.week_calendar').hide();
  });

});
