const checkE = document.getElementById('check')
const numberE = document.getElementById('number')
const btnE = document.getElementById('wyslij')
const resE = document.getElementById('result')

btnE.addEventListener('click',(e)=>{
    if (checkE.checked){
        resE.innerHTML='Dowieziemy Twoją pizzę za darmo'
    }
    else {
        resE.innerHTML=`Dowóz będzie Cię kosztował ${numberE.value*2} złotych`
    }
})