 'use strict';
/*
    hint: I use comments to help you identify the function and the algorithm of this JavaScript code.
    hint: Now, let's just get into it. an editor with dark mode is reccomended for editing this file.
*/
// Those are settings. You can literally modify them. You can even activate or disable libraries. Just... Please do not delete the backticks.
const set = `{
    "libraries":{
        "butiwe":{
            "activate":true
        },
        "cve":{
            "activate":true
        },
        "butterfly":{
            "activate":true
        },
        "lazybum":{
            "activate":true
        },
        "maxinum":{
            "activate":true
        }
    },
    "settings":{
        "log":false,
        "alert_hash":false,
        "preventhib":false,
        "lock":false
    }
}`
// I'm leaving this comment here to prevent you from accidentally editing the code on the bottom.
const formatted = JSON.parse(set);
// Do NOT edit those, they are custom JavaScript strings from the parsed JSON strings that i made for them to sync.
let butiwe = formatted.libraries.butiwe.activate; let cve = formatted.libraries.cve.activate;
let butterfly = formatted.libraries.butterfly.activate; let logelement = formatted.settings.log;
let alerthash = formatted.settings.alert_hash; let preventhib = formatted.settings.preventhib;
let lock = formatted.settings.lock; let lazybum = formatted.libraries.lazybum.activate;
let maxinum = formatted.libraries.maxinum.activate;
// You can edit what the settings say here.
document.getElementById("settings").textContent = "butiwe: " + butiwe + ". cve: " + cve + ". butterfly: " + butterfly + ". lazybum: " + lazybum + ". maxinum: " + maxinum + "."
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
// Now, let's get into the console. This is disabled by default for not bothering the console. Just change the log thing on the json thing to be set to true.
if (logelement == true) {
    console.log("Butiwe is " + butiwe + ".")
    console.log("Butterfly is " + butterfly + ".")
    console.log("cve is " + cve + ".")  
}
if (lock == true) {
    // If it's true, A3N will be blocked, wich means you will just have a piece of useless junk.
    console.log("A3N Locked.")
    document.body.innerHTML = `
    <h1>A3N Live is unavailable.</h1>
	<section style="border-color:white">
	<p style="color:white">A3N Live was blocked by the administrator.</p>
	</section>`
}