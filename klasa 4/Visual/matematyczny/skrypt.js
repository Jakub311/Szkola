const numbA = document.getElementById('numberA')
const numbB = document.getElementById('numberB')
const dodE = document.getElementById('dod')
const odeE = document.getElementById('ode')
const mnoE = document.getElementById('mno')
const dzieE = document.getElementById('dzie')
const potE = document.getElementById('pot')
const p = document.querySelector('p')

dodE.addEventListener('click',(event)=>{
    let numberA=parseInt(numbA.value)
    let numberB=parseInt(numbB.value)
    
    p.innerHTML=`Wynik ${numberA+numberB}`
})
odeE.addEventListener('click',(event)=>{
    let numberA=parseInt(numbA.value)
    let numberB=parseInt(numbB.value)
    
    p.innerHTML=`Wynik ${numberA-numberB}`
})
mnoE.addEventListener('click',(event)=>{
    let numberA=parseInt(numbA.value)
    let numberB=parseInt(numbB.value)
    
    p.innerHTML=`Wynik ${numberA*numberB}`
})
dzieE.addEventListener('click',(event)=>{
    let numberA=parseInt(numbA.value)
    let numberB=parseInt(numbB.value)
    
    p.innerHTML=`Wynik ${numberA/numberB}`
})
potE.addEventListener('click',(event)=>{
    let numberA=parseInt(numbA.value)
    let numberB=parseInt(numbB.value)
    
    p.innerHTML=`Wynik ${numberA**numberB}`
})