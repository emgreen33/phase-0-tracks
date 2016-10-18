console.log("You did the thing!");

// make test blue
function makeTextBlue(event) {
  console.log("click happened! here's the click event:");
  console.log(event);
  event.target.style.color = "red";
}

var paragraph = document.getElementById("intro");
paragraph.addEventListener("click", makeTextBlue);


// display date
function displayDate() {
    document.getElementById("demo").innerHTML = Date();
}
var button = document.getElementById("btn");
button.addEventListener("click", displayDate);

// change photo
function changePhoto () {
    console.log("you clicked the photo");
    console.log(event);
    event.target.src = "thumbs.png";
}

var photo = document.getElementById("wave-photo");
photo.addEventListener("mouseover", changePhoto);
