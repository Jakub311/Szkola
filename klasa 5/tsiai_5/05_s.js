const goldE = document.getElementById('gold')
const silverE = document.getElementById('silver')
const noneE = document.getElementById('none')
const btnE = document.getElementById('btn')
const priceE = document.getElementById('price')
const resultE = document.getElementById('result')

btnE.addEventListener('click',(e)=>{
    let price = Number(priceE.value)
    if(goldE.checked){
        price=price*0.8
    }
    else if(silverE.checked){
        price=price*0.9
    }
    resultE.innerHTML=`Cena z uwzględnieniem rabatu to: ${price}`
})

const h1E = document.querySelector('h1')

h1E.addEventListener('click',(e)=>{
    h1E.innerHTML='deszcz'
    h1E.style.color='grey'
})


const redE = document.getElementById('red')
const greenE = document.getElementById('green')
const blueE = document.getElementById('blue')
const paragrafE = document.getElementById('paragraf')
const procentE = document.getElementById('procent')
const classE = document.getElementById('class')

redE.addEventListener('click',(e)=>{
    let duzy=Number(procentE.value)
    paragrafE.style.color='red'
    paragrafE.style.fontSize=`${duzy}%`
    paragrafE.className=`${classE.value}`
})
greenE.addEventListener('click',(e)=>{
    let duzy=Number(procentE.value)
    paragrafE.style.color='green'
    paragrafE.style.fontSize=`${duzy}%`
    paragrafE.className=`${classE.value}`
})
blueE.addEventListener('click',(e)=>{
    let duzy=Number(procentE.value)
    paragrafE.style.color='blue'
    paragrafE.style.fontSize=`${duzy}%`
    paragrafE.className=`${classE.value}`
})