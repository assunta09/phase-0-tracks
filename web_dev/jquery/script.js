$(document).ready(function() {
  $('#orange').mouseenter(function() {
    $(this).animate({
      height: '+=10px'
    });
  });

  $('#green').mouseenter(function() {
    $(this).css('background-color', "green");
    $(this).fadeTo('fast', 0.5);
  });

  $('#orange').mouseleave(function() {
    $(this).animate({
      height: '-=10px',
    });  

  $('#green').mouseleave(function() {
    $(this).css('background-color', '#FA6900');
    $(this).fadeTo('fast', 1);
  });

   });
   $('#blue').click(function() {
       $(this).toggle(1000);
   }); 
});