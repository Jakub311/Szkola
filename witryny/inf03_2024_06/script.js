const krotkieE = document.getElementById('krotkie')
const srednieE = document.getElementById('srednie')
const poldlugieE = document.getElementById('poldlugie')
const dlugieE = document.getElementById('dlugie')
const btnE = document.getElementById('btn')
const resE = document.getElementById('result')

btnE.addEventListener('click',(e)=>{
let krotkie=Number(krotkieE.value)
let srednie=Number(srednieE.value)
let poldlugie=Number(poldlugieE.value)
let dlugie=Number(dlugieE.value)

    if(krotkieE.checked){
        resE.innerHTML=`cena promocyjna: ${krotkie-10}`
    }
    if(srednieE.checked){
        resE.innerHTML=`cena promocyjna: ${srednie-10}`
    }
    if(poldlugieE.checked){
        resE.innerHTML=`cena promocyjna: ${poldlugie-10}`
    }
    if(dlugieE.checked){
        resE.innerHTML=`cena promocyjna: ${dlugie-10}`
    }
})