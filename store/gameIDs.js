const formatted = JSON.parse('{"storeID": {"nam":"Arancia 3 Store","storeID": "32489724892345934"}}');
let storeIDo = formatted.storeID.nam;
console.log('Response from Arancia 3\'s server. Games are loaded properly.');
console.log('current location: ' + storeIDo);