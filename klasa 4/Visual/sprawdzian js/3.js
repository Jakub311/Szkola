const nrE = document.getElementById('nr')
const wagaE = document.getElementById('waga')
const btn = document.querySelector('button')
const resultE = document.getElementById('result')

btn.addEventListener('click',(e)=>{
    let price 
    let waga = Number(wagaE.value)
    let nr = Number(nrE.value)
    if(nr==1){
        price = 5
    }
    else if(nr==2){
        price = 7
    }
    else if(nr==3){
        price = 6
    }
    else{
        price = 0
    }

    resultE.innerHTML=`Koszt zamówienia wynosi ${price*waga} zł`
})