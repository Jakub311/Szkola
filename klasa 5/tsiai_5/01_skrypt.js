const numer1E = document.getElementById('numer1')
const numer2E = document.getElementById('numer2')
const btnE = document.getElementById('btn')
const resultE = document.getElementById('result')

btnE.addEventListener('click',(e)=>{
    let numer1=Number(numer1E.value)
    let numer2=Number(numer2E.value)
    let suma=numer1+numer2
    let iloczyn=numer1*numer2
    resultE.innerHTML=`suma liczb to: ${suma}, iloczyn liczb to ${iloczyn}`;
})

const h2E = document.querySelector('h2')

h2E.addEventListener('click',(e)=>{
    h2E.innerHTML=`Jakub Kopiszka`
})

const result2E = document.getElementById('result2')
const btn2E = document.getElementById('btn2')
const shortE = document.getElementById('short')
const midE = document.getElementById('mid')
const hfE = document.getElementById('halflong')
const longE = document.getElementById('long')

btn2E.addEventListener('click',(e)=>{ 
    if(shortE.checked){
        result2E.innerHTML=`Cena strzyżenia: 25`
    }
    if(midE.checked){
        result2E.innerHTML=`Cena strzyżenia: 30`
    }
    if(hfE.checked){
        result2E.innerHTML=`Cena strzyżenia: 40`
    }
    if(longE.checked){
        result2E.innerHTML=`Cena strzyżenia: 50`
    }
})

