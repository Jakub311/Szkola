const metrazE = document.getElementById('metraz')
const skuwanieE = document.getElementById('skuwanie')
const schodyE = document.getElementById('schody')
const rabatE = document.getElementById('rabat')
const opcjeE = document.getElementById('opcje')
const kafleE = document.getElementById('kafle')
const btn = document.querySelector('button')
const h3 = document.querySelector('h3')

btn.addEventListener('click',(e)=>{
    let price = Number(opcjeE.value)
    let metraz = Number(metrazE.value)
    if(skuwanieE.checked){
        price = price*1.1
    }
    if (schodyE.checked){
        price = price*1.2
    }
    if(rabatE.checked){
        price = price*0.95
    }
    if(metraz<10){
        price = price*1.1
    }
    if(metraz>50){
        price = price*0.9
    }

    h3.innerHTML=price*metraz
})