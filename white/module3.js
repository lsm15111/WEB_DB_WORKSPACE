
var user = {
    userid:'sky',
    pwd: '1234',
    info: function(){
        console.log(`아이디: ${userid}`);
        console.log(`패스워드: ${pwd}`);
    }
}

module.exports = user;