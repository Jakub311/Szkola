const btnE = document.getElementById('btn')
const areaE = document.getElementById('powierzchnia')
const resE = document.getElementById('wynik')

btnE.addEventListener('click',(e)=>{
    let area = Number(areaE.value)
    let farba = (area/4)
    let ilepuszek = Math.ceil(farba)
    resE.innerHTML=`Liczba potrzebnych puszek: ${ilepuszek}`
})