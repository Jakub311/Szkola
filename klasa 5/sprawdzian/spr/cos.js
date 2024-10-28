const cenaE = document.getElementById('cena')
const marzaE = document.getElementById('marza')
const btnE = document.getElementById('btn')
const resE = document.getElementById('result')

btnE.addEventListener('click',(e)=>{
    let cena=Number(cenaE.value)
    let marza=Number(marzaE.value)
    let sumaE=cena+marza
    if(sumaE<100){
        resE.innerHTML=`Cena z marża wynosi ${sumaE}`
    }
    else {
        resE.innerHTML=`Cena z marża wynosi ${sumaE}, zapytaj o rabat`
    }
})

const uslugaE = document.getElementById('usluga')
const metrazE = document.getElementById('metraz')
const rabatE = document.getElementById('rabat')
const res2E = document.getElementById('result2')
const btn2E = document.getElementById('btn2')

btn2E.addEventListener('click',(e)=>{
    let metraz=Number(metrazE.value)
    let cena1=uslugaE.value*metraz;
    res2E.innerHTML=`${cena1}`
    if(rabatE.checked){
        res2E.innerHTML=`${cena1*0.95}`
    }
})

const h1E = document.querySelector('h1')
h1E.addEventListener('mouseover',(e)=>{
    h1E.innerHTML=`Poprawa`
    h1E.style.color='red'
})

const linethroughE = document.getElementById('linethrough')
const underlineE = document.getElementById('underline')
const noneE = document.getElementById('none')
const btn4E = document.getElementById('btn4')
const cosE = document.getElementById('cos')

btn4E.addEventListener('click',(e)=>{
    if(linethroughE.checked){
        cosE.style.textDecoration='line-through'
    }
    if(underlineE.checked){
        cosE.style.textDecoration='underline'
    }

})