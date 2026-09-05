fetch('https://raw.githubusercontent.com/arancia313/Arancia-3-Network/refs/heads/System/users.json')
.then(res => res.json())
.then(data => {
    var html = '';
    for (var key in data.users) {
        html += '<p>' + key + ': ' + JSON.stringify(data.users[key]) + '</p>';
    }
    document.getElementById('view').innerHTML = html;
})
.catch(error => console.error('Parsing Error;', error))