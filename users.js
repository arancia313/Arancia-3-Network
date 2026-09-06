    const ccj = "ccj" + 8; const ranks = ["Non-Admin" = 0, "VIP" = 1, "Mod" = 2, "Admin" = 3, "HeadAdmin" = 4, "Owner" = 5]; const permissions = ["none", "ban", "write"]; console.log('ccj identified: ' + ccj).catch(error => {console.error('ccj was not identified. Error: ' + error)})
    const users = [ // For the users.
    {id: 1, name: "Arancia_Carnivora", onlineID: "Arancia_Carnivora", rank: ranks = 5, status: "offline", hash: "#0", permissions: permissions = "write", content: "hidden", ccj: ccj},
    {id: 2, name: "arancia_ahh", onlineID:  "arancia_ahh", rank: ranks = 5, status: "online", hash: "#1", permissions: permissions = "write", ccj: ccj},
    {id: 3, name: "pecete dev", onlineID: "pecete_dev", rank: ranks = 4, status: "offline", hash: "#2", permissions: permissions = "ban", ccj: ccj},
    {id: 4, name: "arancia313", onlineID: "arancia313", rank: ranks = 5, status: "offline", hash: "#3", permissions: permissions = "none", ccj: ccj},
    {id: 5, name: "Player 3365", onlineID: "player3365", rank: ranks = 3, status: "offline", hash: "#4", permissions: permissions = "none", ccj: ccj},
    {id: 6, name: "someone", onlineID: "someone", rank: ranks = 1, status: "offline", hash: "#5", permissions: permissions = "none", ccj: ccj},
    {id: 7, name: "providers", onlineID: "providers", rank: ranks = 4, status: "offline", hash: "#6", permissions: permissions = "none", ccj: ccj},
    {id: 8, name: "Marsh", onlineID: "marsh_", rank: ranks = 2, status: "offline", hash: "#7", permissions: permissions = "none", ccj: ccj},
    {id: 9, name: "player3540", onlineID: "player3540", rank: ranks = 0, status: "offline", hash: "#8", permissions: permissions = "none", ccj: ccj},
    {id: 10, name: "player2389", onlineID: "player2389", rank: ranks = 0, status: "offline", hash: "#9", permissions: permissions = "none", ccj: ccj}];
    const bots = [ // For the bots and the service provider. I definitely need the service provider for the deadlines and such.
    {id: "@+" + 1, name: "Arancia 3 Network Service Provider", onlineID: "[A3N]", rank: ranks = 4, status: "offline", deadlineID: "23479394231798342748", hash: null, permissions: permissions = "ban", ccj: ccj},
    {id: "@+" + 2, name: "celdrone", onlineID: "celdrone", rank: ranks = 0, status: "offline", hash: "#+1", permissions: permissions = "none", ccj: ccj},
    {id: "@+" + 3, name: "ostash", onlineID: "ostash", rank: ranks = 0, status: "offline", hash: "#+2", permissions: permissions = "none", ccj: ccj},
    {id: "@+" + 4, name: "Service 1", onlineID: "service-1", rank: ranks = 3, status: "offline", hash: "#+3", permissions: permissions = "none", ccj: ccj},
    {id: "@+" + 5, name: "Service 2", onlineID: "service-2", rank: ranks = 3, status: "offline", hash: "#+4", permissions: permissions = "none", ccj: ccj},
    {id: "@+" + 6, name: "Service 3", onlineID: "service-3", rank: ranks = 3, status: "offline", hash: "#+5", permissions: permissions = "none", ccj: ccj},
    {id: "@+" + 7, name: "A3N Live", onlineID: "A3N-Live", rank: ranks = 0, status: "offline", hash: "#+6", permissions: permissions = "none", ccj: ccj},
    {id: "@+" + 8, name: "ghost", onlineID: "ghost_", rank: ranks = 3, status: "offline", hash: "#+7", permissions: permissions = "none", ccj: ccj},
    {id: "@+" + 9, name: "player4894", onlineID: "player4894", rank: ranks = 0, status: "offline", hash: "#+8", permissions: permissions = "none", ccj: ccj},
    {id: "@+" + 10, name: "player5934", onlineID: "player5934", rank: ranks = 0, status: "offline", hash: "#+9", permissions: permissions = "none", ccj: ccj}];