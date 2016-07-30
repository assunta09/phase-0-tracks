console.log("the script is running");

function addboarder(event) {
	event.target.style.border = "2px solid blue";
	event.target.style.margin = "50px";
}

var text = document.getElementById("about");
text.addEventListener("click", addboarder);