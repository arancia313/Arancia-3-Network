const formatted = JSON.parse(fetch("https://raw.githubusercontent.com/arancia313/Arancia-3-Network/refs/heads/System/store/gameIDs.json").then(r=>r.text))
let storeID = formatted.storeID.storeID
console.log('Response from Arancia 3\'s server. Games are loaded properly.');
console.log('current storeID: ' + storeID)