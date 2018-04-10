const anagrams = (stringA, stringB) => {
    let strA = stringA.toLowerCase().replace(/[^a-z\d]/g,'').split('').sort().join('');
    let strB = stringB.toLowerCase().replace(/[^a-z\d]/g,'').split('').sort().join('');

    return strA === strB;
};