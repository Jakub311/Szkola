const naglowek = document.querySelector('h1')

naglowek.addEventListener('click',(e)=>{
    naglowek.style.color='yellow'
})

const te1E = document.getElementById('te1')
const te2E = document.getElementById('te2')
const submitE = document.getElementById('submit')
const h2 = document.querySelector('h2')

submitE.addEventListener('click',(e)=>{
    let a = Number(te1E.value)
    let b = Number(te2E.value)
    h2.innerHTML=`${a+b}`
})
