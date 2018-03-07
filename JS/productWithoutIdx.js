const productWithoutIdx = (arr) => {
    let result = [];
    let productBeforeIdx = 1;
    for(let i=0; i < arr.length; i++) {
        result[i] = productBeforeIdx;
        productBeforeIdx *= arr[i];
    }

    let productAfterIdx = 1;
    for(let j = arr.length - 1; j >= 0; j--) {
        result[j] *= productAfterIdx;
        productAfterIdx *= arr[j];
    }
    return result;
};

console.log(productWithoutIdx([1,7,8,2]));