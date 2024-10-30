const butE = document.getElementById(`send`)
const surnameErrorE = document.getElementById(`surname-error`)
const surnameE = document.getElementById(`surname`)
const emailE = document.getElementById(`email`)
const emailErrorE = document.getElementById(`email-error`)
const zipcodeE = document.getElementById(`zipcode`)
const zipcodeErrorE = document.getElementById(`zipcode-error`)
const addresE = document.getElementById(`addres`)
const addresErrorE = document.getElementById(`addres-error`)
const resE = document.getElementById(`res`)

butE.addEventListener('click',(e)=>{
    e.preventDefault()

    const wyrEmail = /^\w{4,}@staszic.eu$/i
    const wyrzip = /^{0-9}{2}\-{0-9}{3}$/
    const wyradres = /[a-z]{3,}.*[0-9]/i

    if(surnameE.value.length < 3){
        surnameErrorE.innerHTML='zbyt krótkie'
        // surnameE.style.backgroundColor='red'
        surnameE.classList.add('error')
    }
    else {
        resE.innerHTML='Nazwisko: '+surnameE.value
        surnameE.classList.remove('error')
        surnameErrorE.innerHTML=''
    }
    if(!wyrEmail.test(emailE.value)){
        emailErrorE.innerHTML='zły email'
        emailE.classList.add('error')
    }
    else{
        resE.innerHTML+=emailE.value+'<br>'
        emailE.classList.remove('error')
        emailErrorE.innerHTML=''
    }
    if(!wyrzip.test(zipcodeE.value)){
        zipcodeErrorE.innerHTML='zły kod pocztowy'
        zipcodeE.classList.add('error')
    }
    else{
        zipcodeErrorE=innerHTML=''
        zipcodeE.classList.remove('error')
        zipcodeE.innerHTML+=zipcodeE.value+'<br>'
    }
})