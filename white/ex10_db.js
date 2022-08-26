
//1. npm install oracledb
//2. dbconfig.js
//3. instantclient_21_6폴더가 필요

const oracledb = require('oracledb');
const dbConfig = require("./dbconfig.js");
oracledb.initOracleClient({ libDir: 'C:\\workspace\\instantclient_21_6' });		

console.log(dbConfig);
console.log('오라클연결환경 성공');

async function selectDatabase(){
    let connection = await oracledb.getConnection(dbConfig);
    let binds = {};
    let options = {
        outFormat: oracledb.OUT_FORMAT_OBJECT
    };

    let result = await connection.execute("select * from test",binds,options);
    console.log(result.rows);
    for(let i=0; i<result.rows; i++){
        console.log(result.rows[i]);
    }
    await connection.close();
}
selectDatabase(); //전체출력