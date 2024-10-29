const fnameE = document.getElementById('fname')
const snameE = document.getElementById('sname')
const emailE = document.getElementById('email')
const serviceE = document.getElementById('service')
const copyE = document.getElementById('copy')
const sendE = document.getElementById('send')
const resultE = document.getElementById('result')

sendE.addEventListener('click',(e)=>{
    resultE.innerHTML=`${fnameE.value} ${snameE.value}
    <br> ${emailE.value.toLowerCase()} <br>Usługa: ${serviceE.value}`
    if(copyE.checked){
        resultE.innerHTML+=`<br> Kopia zapasowa została wysłana`
    }
})