const linkE = document.querySelector('input[type="text"]')
const imgE = document.querySelector('aside img')

linkE.addEventListener('change',(e)=>{
    imgE.src=linkE.value
})