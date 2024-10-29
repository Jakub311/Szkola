const sideE = document.getElementById('side')
const btnareaE = document.getElementById('btnarea')
const btncircE = document.getElementById('btncirc')
const resultE = document.getElementById('result')

btnareaE.addEventListener('click',(event)=>{
    let a=sideE.value
    if(a.length==0 || isNaN(a)){
    resultE.innerHTML='Należy wpisać wartość liczbową'
    }
    else{
        resultE.innerHTML=a**2
    }
})

btncircE.addEventListener('click',(event)=>{
})