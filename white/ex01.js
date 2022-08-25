cnt=345 ;
message='목요일점심'
student={name:'길동', age:22}
console.log('숫자출력 %d ' , cnt );
console.log('문자출력 %s ' , message);
console.log('json출력 %j ' , student);

var obj = {name:'김패스', cname:'웹서비스',subject:'NodeJs'};
//obj만 출력
console.log(obj);
console.dir(obj);
let sum=0;
for(let i=1; i<=10;i++){
    sum= i+sum;
}
console.log(sum);