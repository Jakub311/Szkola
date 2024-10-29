const doskonaleE = document.getElementById('doskonale')
const srednieE = document.getElementById('srednie')
const slabeE = document.getElementById('slabe')
const btn = document.querySelector('button')
const resultE = document.getElementById('result')

btn.addEventListener('click',(e)=>{
    if(doskonaleE.checked){
        resultE.innerHTML=`Twoje zdanie na ten temat: doskonałe`
    }
    if(srednieE.checked){
        resultE.innerHTML=`Twoje zdanie na ten temat: średnie`
    }
    if(slabeE.checked){
        resultE.innerHTML=`Twoje zdanie na ten temat: słabe`
    }
})