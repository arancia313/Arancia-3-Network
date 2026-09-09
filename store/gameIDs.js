const formatted = JSON.parse('{"storeID": {"name": "Arancia 3 Store","storeID": "32489724892345934"}')
let storeIDo = formatted.storeID.storeID
console.log('Response from Arancia 3\'s server. Games are loaded properly.');
console.log('current storeID: ' + storeIDo)