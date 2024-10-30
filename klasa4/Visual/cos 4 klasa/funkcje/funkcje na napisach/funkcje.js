// function DnM(b){
//     return b.toLowerCase()
// }
// console.log(DnM(`ASDHASJKDH`))

// function LongerText(a,b){
//     if (a.length > b.length){
//         return a;
//     }
//     else {
//         return b;
//     }
// }
// console.log(LongerText(`AJSDLASD`, `ADA`))
// console.log(LongerText(`GA`, `ADA`))

// function czyjest(c){
//     let n=c.indexOf(`@`)
//     if (n>=0){
//         console.log(`malpa znaleziona na pozcji ${n}`)
//     }
//     else{
//         console.log(`nie ma malpy`)
//     }
// }

// czyjest(`ala@poczta.pl`)
// czyjest(`alapoczta.pl`)

// function firstFive(text){
//     return text.substr(0,6)
// }
// console.log(firstFive('Ala ma kota'))

// function lastFive(text){
//     return text.substring(text.length-5)
// }
// console.log(lastFive('Mateusz'))

// function midFive(text){
//     let mid=text.length/2
//     mid=Math.floor(mid)
//     console.log(mid);
//     return text.slice(mid-2,mid+2)
// }
// console.log(midFive('imateusz'))

// let napis = 'cos umiem'
// let tablice = [112,112,34,35]

// napis[2] = '5'
// tablice[0] = 113

// console.log(napis)
// console.log(tablice)

// function ChangeFirstText(lista){
//     lista=lista.slice(1)
//     return '@'+lista
// }
// console.log(ChangeFirstText('nie działa'))

// let tekst='ryjesdfsdfsdfsdfsdfsdfsdfsdfsdf ryje'
// let tekst2 = tekst.replace('ryje', 'ZJEBY')

// console.log(tekst2)

// function toClause(text){
//     return text.split('.')
// }
// console.log(toClause('ALA NIE MA KOTA. AL.E MA KO.TA'))

let text='powiększ mnie!'
console.log(text.toUpperCase())

let text2='ZAPISZ MNIE MAŁYMI LITERAMI'
console.log(text2.toLowerCase())

let text3="!@#$ wytnij te dziwne znaki na początku"
console.log(text3.slice(4))

text4='sprawdź, czy zawieram słowo "czy" '
if(text4.indexOf('czy') ==-1){
    console.log('nie zawieram slowa czy')
}
else{
    console.log('zawieram słowo czy')
}

text5="podziel, ten, tekst, od, przecinków"
console.log(text5.split(','))

function server(email){
    let p=email.indexOf('@')
    return email.slice(p+1)
}
console.log(server('xyz@wp.pl'))


function server2(email){
    let p=email.indexOf('@')
    let s=email.slice(p+1)
    return s.toUpperCase()
}
console.log(server2('xyz@wp.pl'))

function server3(email){
    let p=email.indexOf('@')
    if(email.indexOf("@") ==-1){
        return 'nie prawidlowy adres email'
    }
    else{
        return 'prawidlowy'
    }
}
console.log(server3('xyz@wp.pl'))