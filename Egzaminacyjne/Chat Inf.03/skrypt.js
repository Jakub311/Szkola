const  textE = document.getElementById('text')
const blokE = document.getElementById('blok')
const btnE = document.getElementById('btn')

btnE.addEventListener('click', (e)=>{
    let textV = textE.value
    let imgE = document.createElement('img')
    let pE = document.createElement('p')
    let divE = document.createElement('div')
    imgE.src = 'Jolka.jpg'
    pE.innerHTML=`${textV}`
    divE.appendChild(imgE)
    divE.appendChild(pE)
    divE.className = 'Jolka'
    blokE.appendChild(divE)

    divE.scrollIntoView()
    })

const randomE = document.getElementById('random')

randomE.addEventListener('click',(e)=>{
    let table = ["Świetnie!",
    "Kto gra główną rolę?",
    "Lubisz filmy Tego reżysera?",
    "Będę 10 minut wcześniej",
    "Może kupimy sobie popcorn?",
    "Ja wolę Colę",
    "Zaproszę jeszcze Grześka",
    "Tydzień temu też byłem w kinie na Diunie",
    "Ja funduję bilety"]

    const random = table[Math.floor(Math.random()*table.length)]

    let imgE = document.createElement('img')
    let pE = document.createElement('p')
    let divE = document.createElement('div')
    imgE.src = 'Krzysiek.jpg'
    pE.innerHTML=`${random}`
    divE.appendChild(imgE)
    divE.appendChild(pE)
    divE.className = 'Krzys'
    blokE.appendChild(divE)

    divE.scrollIntoView()
})