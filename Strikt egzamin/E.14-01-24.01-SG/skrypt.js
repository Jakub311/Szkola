const btnE = document.getElementById('btn')
const ksztaltE = document.getElementById('ksztalt')
const resE = document.getElementById('result')
const rE = document.getElementById('r1')
const gE = document.getElementById('g')
const bE = document.getElementById('b')
const kE = document.getElementById('color')

btnE.addEventListener('click',(e)=>{
    let ksztalt=Number(ksztaltE.value)
    if(ksztalt==1){
        resE.innerHTML=`Twoje zamówienie to cukierek cytryna`
    }
    else if(ksztalt==2){
        resE.innerHTML=`Twoje zamówienie to cukierek liść`
    }
    else if(ksztalt==3){
        resE.innerHTML=`Twoje zamówienie to cukierek banan`
    }
    else{
        resE.innerHTML=`Twoje zamówienie to cukierek inny`
    }
})
kE.addEventListener('click',(e)=>{
    let r = Number(rE.value)
    let g = Number(gE.value)
    let b = Number(bE.value)
    kE.style.backgroundColor=`rgb(${r},${g},${b})`
})