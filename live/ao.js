function a3function() {
    let tex;
    let promp = prompt("Authenthicate as:", "Aoo!");
    if (promp == null || promp == "") {
      tex = "Prompt Cancelled.";
    } else {
      tex = promp
    }
    document.getElementById("authdisp").innerHTML = tex;
}