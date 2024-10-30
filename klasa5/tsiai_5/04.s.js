const loremE=document.querySelector('#lorem')
const sizeE=document.querySelector('#size')
const italicE=document.querySelector('#italic')
const btnE=document.querySelector('#btn')

const blueE = document.getElementById('blue')
const redE = document.getElementById('red')
const yellowE = document.getElementById('yellow')

btnE.addEventListener('click', (e)=>{
    let s=sizeE.value
    loremE.style.fontSize=`${s}px`
    if(italicE.checked){
        loremE.style.fontStyle=`italic`
    }
    else {
        loremE.style.fontStyle=`normal`
    }
    if(blueE.checked){
        loremE.style.color='blue'
        loremE.style.backgroundColor='black'
    }
    if(redE.checked){
        loremE.style.color='red'
        loremE.style.backgroundColor='black'
    }
    if(yellowE.checked){
        loremE.style.color='yellow'
        loremE.style.backgroundColor='black'
    }
})

const btncE = document.getElementById('btnc')
const classE = document.getElementById('class')

btncE.addEventListener('click',(e)=>{
    loremE.className = classE.value
})
