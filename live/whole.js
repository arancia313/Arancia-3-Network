/*
    hint: I use comments to help you identify the function and the algorith of this JavaScript code.
    hint: Now, let's just get into it. an editor with dark mode is reccomended for editing this file.
*/
// Those are settings. You can literally modify them. You can even activate libraries.
const set = '{"libraries":{"butiwe":{"activate":true},"cve":{"activate":true},"butterfly":{"activate":true}},"settings":{"log":false}}'
// I'm leaving this comment here to prevent you from accidentaly editing the code on the bottom.
const formatted = JSON.parse(set);
// Do NOT edit those, they are custom JavaScript strings from the parsed JSON strings that i made for them to sync.
let butiwe = formatted.libraries.butiwe.activate
let cve = formatted.libraries.cve.activate
let butterfly = formatted.libraries.butterfly.activate
let logelement = formatted.settings.log
// You can edit what the settings say here.
document.getElementById("settings").textContent = "butiwe: " + butiwe + ". cve: " + cve + ". butterfly: " + butterfly + "."
// Ok, ok. Let's get into the REAL code. Those 3 lines go to the console, and console.log() goes to the console and displays your hash.
const hash = "#" + Math.random(100 -100);
console.log("Starting Shell with A3N Live hash:", hash);
document.getElementById("hash").innerText = hash;
/*
   hint: should NOT touch those. Anyways, they get the URL of some raw files of the network, just to connect to it. 
   hint: This is called "Network Connecting",  and it uses the "raw.githubusercontent.com" algoritm.
*/
const url = "https://raw.githubusercontent.com/arancia313/Arancia-3-Network/refs/heads/System/net/A3N_Announcements/net_announcements.txt";
fetch(url).then(r=>r.text()).then(t=>document.getElementById("view").innerText=t);
const url2 = "https://raw.githubusercontent.com/arancia313/Arancia-3-Network/refs/heads/System/net/platform_updates/A3N_Live/updates.txt";
fetch(url2).then(r=>r.text()).then(t=>document.getElementById("pa").innerText=t);
fetch("https://raw.githubusercontent.com/arancia313/Arancia-3-Network/refs/heads/System/users.js").then(r => r.text()).then(eval);
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
// Now, let's get into the console. This is disabled by default for not bothering the console. Just change the log thing on the json thing to be set to true.
if (logelement == true) {
    console.log("Butiwe is " + butiwe + ".")
    console.log("Butterfly is " + butterfly + ".")
    console.log("cve is " + cve + ".")  
}