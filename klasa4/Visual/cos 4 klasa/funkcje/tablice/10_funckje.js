let koty = ["Alojzy", "Ares", "Faflun"];
console.log(koty)
let kotyBig = koty.map( (el)=> {
    return el.toUpperCase()
})
console.log(kotyBig)

let liczby = [1,2,3,4,5,6,7]
console.log(liczby)

let squareliczby = liczby.map((el)=> {
    return el*el
})
console.log(squareliczby)

zwiekszElementy([0, 1, 2, 3])
zwiekszElementy([2, 4, 6, 8])
zwiekszElementy([-1, -2, -3, -4])

function zwiekszElementy(a){
    a = a.map((el)=>{
        return el+1
    })
    console.log(a)
}

pomnozElementy([2, 5, 3])
pomnozElementy([1, 86, -5])
pomnozElementy([5, 382, 0]) 

function pomnozElementy(b){
    b = b.map((el) =>{
        return el*2
    })
    console.log(b)
}

dlugoscWyrazow(["hello", "world"]) //➞ [5, 5]
dlugoscWyrazow(["Halloween", "Thanksgiving", "Christmas"]) //➞ [9, 12, 9]
dlugoscWyrazow(["She", "sells", "seashells", "down", "by", "the", "seashore"]) //➞ [3, 5, 9, 4, 2, 3, 8]

function dlugoscWyrazow(c){
    c = c.map((el) =>{
        return el.length
    })
    console.log(c)
}

goraDol([1, 2, 3, 4, 5]) //➞ [2, 1, 4, 3, 6]
goraDol([3, 3, 4, 3]) //➞ [4, 4, 3, 4]
goraDol([2, 2, 0, 8, 10]) //➞ [1, 1, -1, 7, 9]

function goraDol(d){
    d = d.map((el) => {
        if (el%2==0){
            return el-1
        }
        else {
            return el+1
        }
    })
    console.log(d)
}

rozszerzenia(["code.html", "code.css"]) //➞ ["html", "css"]
rozszerzenia(["project1.jpg", "project1.pdf", "project1.mp3"]) //➞ ["jpg", "pdf", "mp3"]
rozszerzenia(["ruby.rb", "cplusplus.cpp", "python.py", "javascript.js"]) //➞ ["rb", "cpp", "py", "js"]

function rozszerzenia(e){
    e = e.map((el) =>{
    let p = el.indexOf('.')
        return el.slice(p+1)
    })
    console.log(e)
}

console.log (bezNieparzystych([1, 2, 3, 4, 5, 6, 7, 8])); // ➞ [2, 4, 6, 8]
console.log(bezNieparzystych([43, 65, 23, 89, 53, 9, 6])); // ➞ [6]
console.log(bezNieparzystych([718, 991, 449, 644, 380, 440])); // ➞ [718, 644, 380, 440]

function bezNieparzystych(a){
    return a.filter((el)=>{
        if(el%2==0)
            return el
    })
}


console.log(filtrujDlugosc([88, 232, 4, 9721, 555], 3)); // ➞ [232, 555]
// zwraca tablicę trzy cyfrowych liczb
console.log(filtrujDlugosc([2, 7, 8, 9, 1012], 1)); // ➞ [2, 7, 8, 9]
// zwraca tylko jednocyfrowe liczby
console.log(filtrujDlugosc([32, 88, 74, 91, 300, 4050], 1)); // ➞ []
// nie ma liczb jednocyfrowych - zwraca pustą tablicę
console.log(filtrujDlugosc([5, 6, 8, 9], 1)); // ➞ [5, 6, 8, 9]
// wszystkie liczby są jednocyfrowe - zwraca oryginalną tablicę

function filtrujDlugosc(a, b){
    return a.filter((el)=> {
        if(el.toString().length ==b)
            return true
        else
            return false
    })
}

console.log(filtrujTablice([1, 2, "a", "b"])); // ➞ [1, 2]
console.log(filtrujTablice([1, "a", "b", 0, 15])); // ➞ [1, 0, 15]
console.log(filtrujTablice([1, 2, "aasf", "1", "123", 123])); // ➞ [1, 2, 123]

function filtrujTablice(a){
    return a.filter((el)=> {
        if(Number.isInteger(el))
            return true
        else 
            return false
    })
}

console.log(indeksZnaku("hello", "l")); // ➞ [2, 3]
// pierwsze "l" ma indeks 2, ostatnie "l" ma indeks 3.

console.log(indeksZnaku("circumlocution", "c")); // ➞ [0, 8]
// pierwsze "c" ma indeks 0, ostatnie "c" ma indeks 8.

console.log(indeksZnaku("happy", "h")); // ➞ [0, 0]
// jest tylko jedno "h" , więc indeks pierwszego i ostatniego wystąpienia to 0 

console.log(indeksZnaku("happy", "e")); // ➞ undefined
// litery "e" nie ma w tekście "happy", więc zwraca undefined.

function indeksZnaku(a){
    return a.filter((el)=>{
        if()
    })  
}