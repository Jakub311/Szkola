const tabimgTopE = document.querySelectorAll('#top-right img')
const imgBottomE = document.querySelector('#bottom-right img')

for (let imgTopE of tabimgTopE){
    imgTopE.addEventListener('click',(event)=>{
        imgBottomE.src=imgTopE.src
    })
}

for (let imgTopE of tabimgTopE){
    imgTopE.addEventListener('mouseover',(event)=>{
        let file = imgTopE.src 
        console.log(file.slice(0,-4))
    })
}