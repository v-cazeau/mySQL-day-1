/*
connecting to db to run any kind of query to get back data and console.lo that data
*/

const mysql = require('mysql2'); //go get mysql2 library
const connection = require('./connection.js')

const db = mysql.createConnection(connection); //pulling out one of those "tools" out, createConnection...then we take out the code that was once there (now in connection.js) and putting connection


db.query("SELECT * FROM customer", (err, data) => {  // with that database we can run a query
    if (err) {
        console.error(err);
    }
    console.table(data);
    db.end();
}); 