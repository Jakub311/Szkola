// var imie = [-1,1,2,3,-4,5,6,7,8]
// imie.forEach((el) => {
//     console.log(el)
// })

// imie.forEach((el) => {
//     console.log(el*el)
// })

// imie.forEach((el) =>{
//     if(el>=0){
//         console.log(el)
//     }
// })

// imie.forEach((el) =>{
//     if (el%2==0){
//         console.log(el)
//     }
// })

// let suma=0;
// imie.forEach((el) =>{
//     suma+=el
// })
// console.log(suma)

// min=imie[0]
// imie.forEach((el) =>{
//     if(el<min){
//         min=el
//     }
// })
// console.log(min)

var nazwisko =[1,2,3,4,5,6,7,8,9,10]
var imie =[55,234,2345,56456]
let iloczyn=1
nazwisko.forEach((el) => {
    iloczyn*=el
})
console.log(iloczyn)

function calcMax(table){
    let naj=nazwisko[0]
    table.forEach((el)=>{
        if(naj<el)
            naj=el
    })
    return naj
}
console.log(calcMax(nazwisko))
console.log(calcMax(imie))

imie.forEach((el,i,tab) =>{
    tab[i]=el-1
})
console.log(imie)

