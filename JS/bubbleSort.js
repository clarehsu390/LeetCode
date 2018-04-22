const bubbleSort = (arr) => {
    let swapped = true;
    while (swapped) {
        swapped = false;
        for (let i=0; i < arr.length - 1; i++) {
            if (arr[i] > arr[i+1] ) {
                let temp = arr[i]
                arr[i] = arr[i+1]
                arr[i+1] = temp;
                swapped = true;
            }
        }
    }
    return arr;
};

console.log(bubbleSort([3,4,2,1,7]));