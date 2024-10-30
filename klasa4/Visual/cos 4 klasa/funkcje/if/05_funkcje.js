function greetings(poraDnia, imie){
    console.log(`dobrej ${poraDnia} ${imie}`)
}

greetings(`nocy`, `pixa`)

function average(x,y){
    return (x+y)/2
}
console.log(average(10,5))

function triple(x){
    return x+x+x
}
console.log(triple(`aa`))
console.log(triple(`5`))

function isodd(number){
    return number%2!=0
}

console.log(isodd(-8))
console.log(isodd(15))

function issdivided(a,b){
    return a%b==0
}
console.log(issdivided(5,5))
console.log(issdivided(10,3))


function isLeapYear(year){
    return issdivided(year,4) && !issdivided(year,100) || issdivided(year,400)
}

console.log(isLeapYear(2000))
console.log(isLeapYear(20023))

function halfOf(number){
    return number/2;
}
console.log(halfOf(2))
console.log(halfOf(2137))

function isLongerThan(text,number){
    return text.length>number
}

console.log(isLongerThan(`wojtas`,5))