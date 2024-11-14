const pE = document.getElementById('p')
const mE = document.getElementById('m')
const mtE = document.getElementById('mt')
const maE = document.getElementById('ma')
const btnE = document.getElementById('btn')
const resE = document.getElementById('result')

btnE.addEventListener('click',(e)=>{
    let price=0
    if(pE.checked){
        price+=45
    }
    if(mE.checked){
        price+=30
    }
    if(mtE.checked){
        price+=20
    }
    if(maE.checked){
        price+=50
    }
    resE.innerHTML=`Cena zabiegów ${price} zł`        
    
})