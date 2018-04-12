const maxChar = str => {
    let strObj = {};
    let max = 1;
    let maxCh = str[0];
    for (let i=0; i < str.length; i++) {
        let ch = str[i];
        if (strObj[ch]) {
            strObj[ch]++;
            if (strObj[ch] > max) {
                max = strObj[ch];
                maxCh = ch;
            }
        } else {
            strObj[ch] = 1;
        }
    }
    return maxCh;
};
