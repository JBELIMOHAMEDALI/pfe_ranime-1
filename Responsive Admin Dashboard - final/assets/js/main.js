// add hovered class to selected list item
let list = document.querySelectorAll(".navigation li");

function activeLink() {
  list.forEach((item) => {
    item.classList.remove("hovered");
  });
  this.classList.add("hovered");
}

list.forEach((item) => item.addEventListener("mouseover", activeLink));

// Menu Toggle
let toggle = document.querySelector(".toggle");
let navigation = document.querySelector(".navigation");
let main = document.querySelector(".main");

toggle.onclick = function () {
  navigation.classList.toggle("active");
  main.classList.toggle("active");
};

function openForm() {
  closedeletetable();
  closemodifyForm();
  document.getElementById("myForm").style.display = "block";
}

function modifyform() {
  closedeletetable();
  closeForm();
  document.getElementById("myFormmodify").style.display = "block";
}

function deletetable() {
  closemodifyForm();
  closeForm();
  document.getElementById("myFormdelete").style.display = "block";
}

function closemodifyForm() {
  document.getElementById("myFormmodify").style.display = "none";
}

function closeForm() {
  document.getElementById("myForm").style.display = "none";
}

function closedeletetable() {
  document.getElementById("myFormdelete").style.display = "none";
}

// delete form
function showDeleteFormPopUp(id) {
  const popUp = document.getElementById("popUpDeleteFormHolder");
  const val_id = document.getElementById("id_delted_acc");
  val_id.innerHTML=id;
  popUp.style.display = "flex"; // Show the pop-up 
}

function HideDeleteFormPopUp() {
  const popUp = document.getElementById("popUpDeleteFormHolder");
  popUp.style.display = "none"; // Show the pop-up 
  
}

// add form
function showAddFormPopUp() {
  const popUp = document.getElementById("popUpAddFormHolder");
  popUp.style.display = "flex"; // Show the pop-up 
}

function HideAddFormPopUp() {
  const popUp = document.getElementById("popUpAddFormHolder");
  popUp.style.display = "none"; // Show the pop-up 
}


// modifer 
function showModifierFormPopUp(id) {
  const popUp = document.getElementById("popUpModifierFormHolder");
  const val_id = document.getElementById("id_update_acc");
  val_id.innerHTML=id;
  popUp.style.display = "flex"; // Show the pop-up 
}

function HideModifierFormPopUp() {
  const popUp = document.getElementById("popUpModifierFormHolder");
  popUp.style.display = "none"; // Show the pop-up 
}


// exit
// modifer 
function showExitFormPopUp() {
  const popUp = document.getElementById("popUpExitFormHolder");
  popUp.style.display = "flex"; // Show the pop-up 
}

function HideExitFormPopUp() {
  const popUp = document.getElementById("popUpExitFormHolder");
  popUp.style.display = "none"; // Show the pop-up 
}




// toogle background
function tg() {
  document.getElementById('nav').classList.toggle('visible');
}