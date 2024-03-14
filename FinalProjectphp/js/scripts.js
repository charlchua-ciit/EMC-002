/*!
* Start Bootstrap - Shop Homepage v5.0.6 (https://startbootstrap.com/template/shop-homepage)
* Copyright 2013-2023 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-shop-homepage/blob/master/LICENSE)
*/
// This file is intentionally blank
// Use this file to add JavaScript to your project

const validate = () => {
    let x = document.forms["form"];
    let user = x["user"].value;
    let pass = x["pass"].value;
    if (user.length < 6) {
        alert("Username must have at least 6 letters!");
        return false;
    } else if (user.search(/\W/g) >= 0){
        alert("Username must have no special characters!");
        return false;
    }
    if (pass.length < 8) {
        alert("Password must have at least 8 letters!");
        return false;
    } else if (pass.search(/[a-z]/g) == -1){
        alert("Password must include at least 1 lowercase letter!");
        return false;
    } else if (pass.search(/[A-Z]/g) == -1){
        alert("Password must include at least 1 uppercase letter!");
        return false;
    } else if (pass.search(/\d/g) == -1){
        alert("Password must include at least 1 digit!");
        return false;
    }
}

$(document).ready(function(){
    $("#myInput").on("keyup", function() {
        if ($('input:text').is(":empty")) {
            $("h2").hide();
          }
      var value = $(this).val().toLowerCase();
      $("#myDIV_1").children().each(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
      })
      $("#myDIV_2").children().each(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
      })
      $("#myDIV_3").children().each(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
      })
      $("#myDIV_4").children().each(function() {
        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
      })
    });
  });