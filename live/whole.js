const url = "https://raw.githubusercontent.com/arancia313/Arancia-3-Network/refs/heads/System/net/A3N_Announcements/net_announcements.txt";
fetch(url).then(r=>r.text()).then(t=>document.getElementById("view").innerText=t);
const url2 = "https://raw.githubusercontent.com/arancia313/Arancia-3-Network/refs/heads/System/net/platform_updates/A3N_Live/updates.txt";
fetch(url2).then(r=>r.text()).then(t=>document.getElementById("pa").innerText=t);