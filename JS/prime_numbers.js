function primeNum(num) {
    for (let i=2; i < num; i++) {
        if (num % i === 0 && num !== i) {
            return false;
            
        }
    }
    return true;
}

console.log(primeNum(2));

function primeFactors(num) {
    let prime = [];
    for (let i=2; i < num; i++) {
        if ( num % i === 0 && primeNum(i)) {
            prime.push(i);
        }
       
    }
    return prime;
}

console.log(primeFactors(10));
