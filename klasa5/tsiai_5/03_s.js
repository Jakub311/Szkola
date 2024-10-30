const h1E = document.querySelector('h1')

h1E.addEventListener('click',(e)=>{
    h1E.innerHTML='Kolorowa Jesień'
    h1E.style.color='orange'
})

const drze = document.getElementById('drzewa')
const krze = document.getElementById('krzewy')
const byli = document.getElementById('byliny')
const btnE = document.getElementById('btn')
const resE = document.getElementById('result')

btnE.addEventListener('click',(e)=>{
    if(drze.checked){
        resE.innerHTML=`Koszt to: ${10*50} zł`
    }
    if(krze.checked){
        resE.innerHTML=`Koszt to: ${10*30} zł`
    }
    if(byli.checked){
        resE.innerHTML=`Koszt to: ${10*15} zł`
    }
})