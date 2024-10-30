const wymiar1E = document.getElementById('wymiar1')
const wymiar2E = document.getElementById('wymiar2')
const btnE = document.getElementById('btn')
const resultE = document.getElementById('result')

btnE.addEventListener('click',(e)=>{
    let wymiar2=Number(wymiar2E.value)
    let wymiar1=Number(wymiar1E.value)
    let area =2*wymiar2*2.7+2*wymiar1*2.7
    resultE.innerHTML=`Powierzchnia całkowita ścian ${area} <br> Koszt malowania ${area*8}`
})