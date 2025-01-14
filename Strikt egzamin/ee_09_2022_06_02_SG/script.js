const numerE = document.getElementById('numer')
const btnE = document.getElementById('btn')
const td1E = document.getElementById('1')
const tdE = document.getElementById('td1')
const td2E = document.getElementById('2')
const td3E = document.getElementById('3')
const td4E = document.getElementById('4')

btnE.addEventListener('click',(e)=>{
    let numer = Number(numerE.value)
    tdE.style.backgroundColor=`hsl(${numer},100%,50%)`
    td1E.style.backgroundColor=`hsl(${numer},80%,50%)`
    td2E.style.backgroundColor=`hsl(${numer},60%,50%)`
    td3E.style.backgroundColor=`hsl(${numer},40%,50%)`
    td4E.style.backgroundColor=`hsl(${numer},20%,50%)`
})