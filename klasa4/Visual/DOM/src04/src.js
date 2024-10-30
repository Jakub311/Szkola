const seasons1 = document.querySelector('#seasons1')
const seasons2 = document.querySelector('#seasons2')
const seasons3 = document.querySelector('#seasons3')
const seasons4 = document.querySelector('#seasons4')

const btn = document.querySelector('button')
const imgE = document.querySelector('img')

btn.addEventListener('click',(event)=>{
    if (seasons1.checked){
        imgE.src='wiosna.jpg'
    }
    if (seasons2.checked){
        imgE.src='lato.jpg'
    }
    if (seasons3.checked){
        imgE.src='jesien.jpg'
    }
    if (seasons4.checked){
        imgE.src='zima.jpg'
    }
})