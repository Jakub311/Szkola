const textareaE = document.querySelector('textarea')
const formE = document.querySelector('form')

if(localStorage.getItem('text')!==null){
    textareaE.value=localStorage.getItem('text')
}

textareaE.addEventListener('input',(e)=>{
    localStorage.setItem('text',textareaE.value)

})

formE.addEventListener('submit',(e)=>{
    localStorage.removeItem('text')
})