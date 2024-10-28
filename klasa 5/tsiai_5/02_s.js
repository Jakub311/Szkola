const btnE = document.getElementById('btn')
const doskE = document.getElementById('doskonale')
const sreE = document.getElementById('srednie')
const slaE = document.getElementById('slabe')
const resE = document.getElementById('result')

btnE.addEventListener('click',(e)=>{
    if(doskE.checked){
        resE.innerHTML=`Twoje zdanie na ten temat to: doskonałe`
    }
    if(sreE.checked){
        resE.innerHTML=`Twoje zdanie na ten temat to: średnie`
    }
    if(slaE.checked){
        resE.innerHTML=`Twoje zdanie na ten temat to: słabe`
    }
    
})

const h1E = document.querySelector('h1')

h1E.addEventListener('click',(e)=>{
    h1E.innerHTML='kolorowa jesień'
})

const numerE = document.getElementById('numer')
const wagaE = document.getElementById('waga')
const btn2E = document.getElementById('btn2')
const res2E = document.getElementById('result2')

btn2E.addEventListener('click',(e)=>{
    let waga = Number(wagaE.value)
    let numer = Number(numerE.value)
    if(numer==1){
        cena=waga*5
    }
    if(numer==2){
        cena=waga*7
    }
    if(numer==3){
        cena=waga*6
    }
    res2E.innerHTML=`Koszt zamówienia wynosi ${cena} zł`
})