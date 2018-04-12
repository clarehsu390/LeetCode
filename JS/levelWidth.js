const levelWidth = root => {
    const result = [0];
    let arr = [root, null];
    while(arr.length > 1) {
        const node = arr.shift();
        if (node === null) {
            result.push(0);
            arr.push(null);
        } else {
            arr.push(...node.children);
            result[result.length - 1]++;
        }
    }
    return result;
};