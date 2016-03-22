$(function() {
    $( ".datepicker" ).datepicker({ minDate: 0, maxDate: "+1M" , dateFormat: 'yy-mm-dd'});
    $('.timepicker').timepicker();
  });