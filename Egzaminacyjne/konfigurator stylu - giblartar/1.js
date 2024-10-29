const indigoE = document.getElementById('Indigo')
const steekblueE = document.getElementById('SteelBlue')
const oliveE = document.getElementById('Olive')
const rightE = document.getElementById('right')
const styleE = document.getElementById('style')
const ramkaE = document.getElementById('ramka')
const imgE = document.querySelector('img')
const ulE = document.querySelector('ul')
const dyskE = document.getElementById('dysk')
const kwadratE = document.getElementById('kwadrat')
const okragE = document.getElementById('okrag')

indigoE.addEventListener('click',(e)=>{
    rightE.style.backgroundColor='Indigo'
})
steekblueE.addEventListener('click',(e)=>{
    rightE.style.backgroundColor='SteelBlue'
})
oliveE.addEventListener('click',(e)=>{
    rightE.style.backgroundColor='Olive'
})

styleE.addEventListener('change',(e)=>{
    style=styleE.value
    rightE.style.color=style
})

ramkaE.addEventListener('click',(e)=>{
    if(ramkaE.checked){
        imgE.style.border='1px solid white'
    }
    else {
        imgE.style.border='none'
    }
})

kwadratE.addEventListener('change',(e)=>{
    ulE.style.listStyle='square'
})
dyskE.addEventListener('change',(e)=>{
    ulE.style.listStyle='disc'
})
okragE.addEventListener('change',(e)=>{
    ulE.style.listStyle='circle'
})

const fontE = document.querySelector('#font')

fontE.addEventListener('change',(e)=>{
    rightE.style.fontSize=fontE.value
})