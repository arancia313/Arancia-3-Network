// This is for that authenthicate button.
function a3function() {
  let tex;
  let promp = prompt("Authenthicate as:", "Aoo!");
  if (promp == null || promp == "") {
  // If you cancelled the prompt, it gives you this.    
    tex = "Prompt Cancelled.";
  } else {
  // If you wrote something on the prompt, it says the tag on the HTML file to display anything that you wrote.
    tex = promp
  }
  // It gets the ID of the thing on the HTML file, inserts the content on it, and displays it.
  document.getElementById("authdisp").textContent = promp;
}