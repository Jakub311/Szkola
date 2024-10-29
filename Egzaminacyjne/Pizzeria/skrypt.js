const checkE = document.getElementById('check')
const kmE = document.getElementById('km')
const btnE = document.getElementById('btn')
const resE = document.getElementById('result')

btnE.addEventListener('click',(e)=>{
    let cena=(kmE.value*2);
    if(checkE.checked){
        resE.innerHTML='Dowieziemy Twoją pizzę za darmo'
    }
    else {
        resE.innerHTML=`Dowóz będzie Cię kosztował ${cena} złotych`
    }
})