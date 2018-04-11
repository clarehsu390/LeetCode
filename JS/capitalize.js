const capitalize = (str) => {
    let result = "";
    for (let i=0; i < str.length; i++) {
        if (i === 0) {
            result += str[i].toUpperCase();
        } else if (str[i-1] === " ") {
            result += str[i].toUpperCase();
        } else {
            result += str[i];
        }
    }
    return result;
};