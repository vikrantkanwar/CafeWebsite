$(window).on("scroll", function () {
  if ($(window).scrollTop()) {
    $("nav").addClass("black");
  } else {
    $("nav").removeClass("black");
  }
});
function validateForm() {
  if (isEmpty(document.getElementById("data_1").value.trim())) {
    alert("Name is required!");
    return false;
  }
  if (!validatePhone(document.getElementById("data_2").value.trim())) {
    alert("Phone must be valid!");
    return false;
  }
  if (!validateEmail(document.getElementById("data_3").value.trim())) {
    alert("Email must be a valid email address!");
    return false;
  }
  if (isEmpty(document.getElementById("data_4").value.trim())) {
    alert("Date is required!");
    return false;
  }
  if (isEmpty(document.getElementById("data_5").value.trim())) {
    alert("Time is required!");
    return false;
  }
  return true;
}
function isEmpty(str) {
  return str.length === 0 || !str.trim();
}
function validatePhone(tel) {
  var pno = /^\d{10}$/;
  return isEmpty(tel) || pno.test(tel);
}
function validateEmail(email) {
  var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,15}(?:\.[a-z]{2})?)$/i;
  return isEmpty(email) || re.test(email);
}
