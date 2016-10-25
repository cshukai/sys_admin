use kbcommons;
db.users.save( {username:"zhen"} )



use kbcommons
db.createUser( { user: "Zhen",
                 pwd: "Lyu",
                 roles: ["readWrite"] })