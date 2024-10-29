const btnE = document.querySelector('button')
const numberE = document.getElementById('number')
const tdE = document.getElementById('1td')
const tdE1 = document.getElementById('1')
const tdE2 = document.getElementById('2')
const tdE3 = document.getElementById('3')
const tdE4 = document.getElementById('4')

btnE.addEventListener('click',(e)=>{
    let number = Number(numberE.value)
    tdE.style.backgroundColor=`hsl(${number},100%,50%)`
    tdE1.style.backgroundColor=`hsl(${number},80%,50%)`
    tdE2.style.backgroundColor=`hsl(${number},60%,50%)`
    tdE3.style.backgroundColor=`hsl(${number},40%,50%)`
    tdE4.style.backgroundColor=`hsl(${number},20%,50%)`
})