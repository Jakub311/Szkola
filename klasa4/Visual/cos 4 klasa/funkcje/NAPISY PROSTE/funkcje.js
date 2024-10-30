// function comp(x,y){
//     if(x.length==y.length){
//     return true
//     }
//     else{
//     return false
//     }
//     }
    
//     console.log(comp("AB", "CD") ); // ➞ true
//     console.log(comp("ABC", "DE")); // ➞ false
//     console.log(comp("hello", "edabit")); // ➞ false
    
    
    
//     function getWord(left,right){
    
//     let text=left+right
    
//     return text
//     }
    
//     console.log(getWord("seas", "onal")); // ➞ "Seasonal"
//     console.log(getWord("comp", "lete")); // ➞ "Complete"
//     console.log(getWord("lang", "uage")); // ➞ "Language"
    
    
    
//     function makeTitle(text){
//     let tablica=text.split(" ")
//     let wynik=""
//     for(let i=0; i let wyraz=tablica[i])
//     wynik+=wyraz[0].toUpperCase()+wyraz.slice(1)+(" ")
//     }
//     return wynik
//     }
//     console.log(makeTitle("This is a title")); // ➞ "This Is A Title"
//     console.log(makeTitle("capitalize every word")); // ➞ "Capitalize Every Word"
//     console.log(makeTitle("I Like Pizza") ); //➞ "I Like Pizza"
//     console.log(makeTitle("PIZZA PIZZA PIZZA")); // ➞ "PIZZA PIZZA PIZZA"
    
    
    
//     function charCount(x,text){
//     let n=0
//     for(let i=0; i if(text[i]==x){
//     n++;
//     }
//     return n
//     }
//     console.log(charCount("a", "edabit")); // ➞ 1
//     console.log(charCount("c", "Chamber of secrets")); // ➞ 1
//     console.log(charCount("b", "big fat bubble")); // ➞ 4
    
    
    
//     function countWords(text){
//     let tablica=text.split(" ")
//     return tablica.length
//     }
//     console.log(countWords("Just an example here move along") ); //➞ 6
//     console.log(countWords("This is a test")); // ➞ 4
//     console.log(countWords("What an easy task, right")); // ➞ 5
    
    
    
//     function hasSpaces(text){
//     if(text.indexOf(" ")==-1){
//     return false
//     }
//     else{
//     return true
//     }
//     }
//     console.log(hasSpaces("hello")); // ➞ false
//     console.log(hasSpaces("hello, world")); // ➞ true
//     console.log(hasSpaces(" ")); // ➞ true
//     console.log(hasSpaces("")); // ➞ false
//     console.log(hasSpaces(",h./!@#")); // ➞ false
    
    
    
    
function getMiddle(text){
let d=text.length
if(d%2==0){
    return text.slice(d/2-1, d/2+1)
}
else{
    return text[Math.floor(d/2)]
}
}
console.log(getMiddle("test")); //➞ "es"
console.log(getMiddle("testing")); // ➞ "t"
console.log(getMiddle("middle")); // ➞ "dd"
console.log(getMiddle("A")); // ➞ "A"