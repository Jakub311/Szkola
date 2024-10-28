const kodE = document.getElementById('kod')
const parE = document.querySelector('.right p')

kodE.addEventListener('change',(e)=>{
    if(kodE.checked){
       parE.classList.add('kod-text')
    }
    else {
        parE.classList.remove('kod-text')
    }
})

const fontE = document.querySelector('.font')
const fontsizeE = document.querySelector('#font-size')
const unitE = document.querySelector('#unit')

fontE.addEventListener('click',(e)=>{
    parE.style.fontSize=fontsizeE.value+unitE.value
})
