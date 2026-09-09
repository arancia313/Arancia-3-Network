const hash = "#" + Math.random(100 -100);
console.log("Starting Shell with A3N Live hash:", hash);
document.getElementById("hash").innerText = hash;
const url = "https://raw.githubusercontent.com/arancia313/Arancia-3-Network/refs/heads/System/net/A3N_Announcements/net_announcements.txt";
fetch(url).then(r=>r.text()).then(t=>document.getElementById("view").innerText=t);
const url2 = "https://raw.githubusercontent.com/arancia313/Arancia-3-Network/refs/heads/System/net/platform_updates/A3N_Live/updates.txt";
fetch(url2).then(r=>r.text()).then(t=>document.getElementById("pa").innerText=t);
fetch("https://raw.githubusercontent.com/arancia313/Arancia-3-Network/refs/heads/System/users.js").then(r => r.text()).then(eval);
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