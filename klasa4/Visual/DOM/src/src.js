const seasons1 = document.querySelector('#seasons1')
const seasons2 = document.querySelector('#seasons2')
const seasons3 = document.querySelector('#seasons3')
const seasons4 = document.querySelector('#seasons4')

const imgE = document.querySelector('img')

seasons1.addEventListener('click',(event)=>{
    imgE.src = 'wiosna.jpg'
})

seasons2.addEventListener('click',(event)=>{
    imgE.src = 'lato.jpg'
})

seasons3.addEventListener('click',(event)=>{
    imgE.src = 'jesien.jpg'
})

seasons4.addEventListener('click',(event)=>{
    imgE.src = 'zima.jpg'
})