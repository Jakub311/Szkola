function table(list){
    return list[0]
}

console.log(table([10,11,12,13]))
console.log(table([1,2,3,4,5,6,7]))

function mniej100(x,y){
    if(x+y<100)
        return true; 
    else 
        return false;
}
console.log(mniej100(50,52))
console.log(mniej100(50,49))

function czyRowne(a,b){
    if(a==b)
        return true;
    else
        return false;
}
console.log(czyRowne(10,20))
console.log(czyRowne(50,50))

function czyParzyste(z){
    if(z%2){
        return false;
    }
    else {
        return true;
    }
}
console.log(czyParzyste(3))
console.log(czyParzyste(4))

function polacz(imie, nazwisko){
    return `${imie} ${nazwisko}`;
}

console.log(polacz(`Jakub`,`Kopiszka`))

function czyTrojkat(b,n,m){
    const sorted = [b,n,m].sort()
    return (sorted[0] + sorted[1]) > sorted[2];
}

console.log(czyTrojkat(2,3,4))
console.log(czyTrojkat(4,3,8))