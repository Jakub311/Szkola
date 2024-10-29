const formEL = document.querySelector('form')
const redEL = document.querySelector('#red')
const greenEL = document.querySelector('#green')
const blueEL = document.querySelector('#blue')
const rightE = document.querySelector('#right')

formEL.addEventListener('submit',(event)=>{
    event.preventDefault()
    if (redEL.checked){
        rightE.style.backgroundColoR='rgb(226,168,168)'
        rightE.style.color='red'
    }
})