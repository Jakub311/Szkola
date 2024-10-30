const btnE = document.getElementById('btn')
const result = document.getElementById('result')
const areaE = document.getElementById('area')
const tile20E = document.getElementById('tile20')
const tile25E = document.getElementById('tile25')

btnE.addEventListener('click',(e)=>{
    let area=Number(areaE.value)
    if(tile20.checked){
        result.innerHTML=(`Koszt Kafelkowania: ${area*70}`)
    }
    else if (tile25.checked){
        result.innerHTML=(`Koszt Kafelkowania: ${area*80}`)
    }
    else {
        result.innerHTML=('Trzeba wybrać kafelki')
    }
})