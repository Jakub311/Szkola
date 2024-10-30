const passwdE = document.getElementById('passwd')
const resultE = document.getElementById('result')
const btnE = document.getElementById('btn')

btnE.addEventListener('click',(event)=>{
    let passwd=passwdE.value
    if(passwd.length===0){
        resultE.style.color='red'
        resultE.innerHTML=('WPISZ HASŁO!')
    }
    else if(passwd.length<4) {
        resultE.style.color='yellow'
        resultE.innerHTML=('SŁABE')
    }
    else if (passwd.length>=4 && passwd.length<=6 && passwd.match(/\d/)){
        resultE.style.color='blue'
        resultE.innerHTML=('ŚREDNIE')
    }
    else if (passwd.length>=7 && passwd.match(/\d/)){
        resultE.style.color='green'
        resultE.innerHTML=('DOBRE')
    }
})