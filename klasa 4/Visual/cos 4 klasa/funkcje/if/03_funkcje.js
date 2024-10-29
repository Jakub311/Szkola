function tellFortune(numberChildren, partner, location, jobTitle){
    console.log(`You will be a ${jobTitle} in ${location}, and married to ${partner} with ${numberChildren} kids.`);
}
tellFortune(5,'Maria', 'Vancouver', 'jews');

function calculateDogAge(age){
    let dogAge=age*7;
    console.log(`Your doggie is ${dogAge} years old in dog years!`)
}
calculateDogAge(5)

function calculateSupply (age, amountPerDay){
    const maxAge=100;
    console.log(`You will need ${(maxAge-age)*365*amountPerDay} to last you until the ripe old age of ${maxAge}`)
}
calculateSupply(90,1)

function celsiusToFahrenheit(c){
    let f=c*2+32;
    console.log(`${c}°C is ${f}°F`)
}

celsiusToFahrenheit(5)

function fahrenheitToCelsius(f){
    let c=(f-32)*5/9
    console.log(`${f}°F is ${c}°C`)
}

fahrenheitToCelsius(5)

function reverseNum(number){
    return 1/number
}

console.log(reverseNum(2))