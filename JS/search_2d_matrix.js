const search2dMatrix = (arr, target) => {
    for (let i = 0; i < arr.length; i++) {
        let row = arr[i];
        if (row[0] <= target && arr[i+1] && arr[i+1][0] >= target) {
            for (let j = 0; j < row.length; j++) {
                if (row[j] === target) {
                    return true;
                }
            }
        }
    }
    return false;
};

let matrix = [
    [1,   3,  5,  7],
    [10, 11, 16, 20],
    [23, 30, 34, 50]
  ];
console.log(search2dMatrix(matrix, 3))
console.log(search2dMatrix(matrix, 34));