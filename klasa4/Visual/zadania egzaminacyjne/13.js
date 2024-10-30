const sizeE = document.getElementById('size')
const styleE = document.getElementById('style')
const redE = document.getElementById('red')
const greenE = document.getElementById('green')
const blueE = document.getElementById('blue')
const resultE = document.getElementById('result')

redE.addEventListener('click',(e)=>{
    resultE.style.color='red'
    resultE.style.fontStyle=styleE.value
    resultE.style.fontSize=sizeE.value+'%'
})

greenE.addEventListener('click',(e)=>{
    resultE.style.color='green'
    resultE.style.fontStyle=styleE.value
    resultE.style.fontSize=sizeE.value+'%'
})

blueE.addEventListener('click',(e)=>{
    resultE.style.color='blue'
    resultE.style.fontStyle=styleE.value
    resultE.style.fontSize=sizeE.value+'%'
})

