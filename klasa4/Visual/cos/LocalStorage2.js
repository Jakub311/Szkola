const inputE = document.querySelector('#up input')
const btnE = document.querySelector('#up button')
const input2E = document.querySelector('#top input')
const btn2E = document.querySelector('#top button')
const downE = document.querySelector('#down')
const wyr = /^https:.*\.jpg$/i

function addImg(link){
    let imgE = document.createElement('img')
    imgE.src=link
    downE.appendChild(imgE)
}
btnE.addEventListener('click',(e)=>{
    const imgLink = inputE.value
    if(wyr.test(imgLink)){
        addImg(imgLink)
    }
    inputE.value=''

})
downE.addEventListener('click',(e)=>{
    downE.removeChild(e.target)
})

btn2E.addEventListener('click',(e)=>{
    top.style.backrgoundColor=`hsl(${colorE.value})`
})