//if Node has been seen before, we know the linked list is circular

const circular = (list) => {
    let seenNodes = {};
    let currentNode = list.head;
    while (currentNode.next) {
        if (seenNodes[currentNode.data]) {
            return true;
        } else {
            seenNodes[currentNode.data] = true;
        }
        currentNode = currentNode.next;
        }
    return false;
};

