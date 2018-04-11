//Given a linked list, return the elements n spaces from the last node in the list.
//Iterate through list to find length; store nodes with index in object

const fromLast = (list, n) => {
    let seenNodes = {};
    let currentNode = list.head;
    let i = 0;
    while (currentNode.next) {
        seenNodes[i] = currentNode;
        i += 1;
        currentNode = currentNode.next;
    }

    return seenNodes[i - n];
};