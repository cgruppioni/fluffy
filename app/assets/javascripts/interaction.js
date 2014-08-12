window.onload = function(){
  document.getElementById("feed").onclick = function() {myFunction()};

  function myFunction() {
    var level = $("#level").attr('src');
    console.log($("#level"));
  }
};
