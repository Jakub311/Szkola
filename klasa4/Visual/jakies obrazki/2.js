const imageList = [
        'https://www.state.gov/wp-content/uploads/2019/04/Japan-2107x1406.jpg',
        'https://afar.brightspotcdn.com/dims4/default/55b4d7f/2147483647/strip/true/crop/1357x720+41+0/resize/1440x764!/quality/90/?url=https%3A%2F%2Fafar-media-production-web.s3.us-west-2.amazonaws.com%2Fbrightspot%2Fcf%2F8a%2F20b4a2c544a58be93512ad67084c%2Fbohler-japankk-4006.jpg',
        'https://www.celebritycruises.com/blog/content/uploads/2021/03/what-is-japan-known-for-mt-fuji-hero-375x540.jpg',
        'https://cdn.britannica.com/63/59363-050-F082087B/Garden-Kinkaku-Temple-shelter-structure-use-landscape.jpg',
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/26/97/39/7f/caption.jpg?w=1200&h=-1&s=1&cx=1920&cy=1080&chk=v1_f31158e4bb953d28a308',
        'https://s30876.pcdn.co/wp-content/uploads/Japan-e1634207070862.jpg.optimal.jpg'
]
const btnE=document.querySelector('#top button')
const mainE=document.querySelector('main')
const btnEE=document.querySelector('#last')
const btnEEE=document.querySelector('#first')

btnE.addEventListener('click',(e)=>{
    for(let i in imageList){
        let divE=document.createElement('div')
        let h2E = document.createElement('h2')
        h2E.innerHTML=parseInt(i)+1
        divE.appendChild(h2E)
        let imgE=document.createElement('img')
        imgE.src=imageList[i]
        divE.appendChild(imgE)
        mainE.appendChild(divE)
    }
    
})

btnEE.addEventListener('click',(e)=>{
    mainE.removeChild(mainE.lastChild)
})
btnEEE.addEventListener('click',(e)=>{
    mainE.removeChild(mainE.firstChild)
})