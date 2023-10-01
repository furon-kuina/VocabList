const searchBar = document.getElementById("searchform");
if (!searchBar) {
  throw new Error('Element with id "searchform" not found.');
}
function descendDOMTree(el: Node, indice: number[]): Node | undefined {
  let cur = el;
  for (const idx of indice) {
    console.log(idx);
    console.log(cur.childNodes);
    cur = cur.childNodes[idx];
  }
  return cur;
}

const clearButton = descendDOMTree(searchBar, [1, 0, 1, 1, 1, 0, 2, 1]);
if (!clearButton) {
  throw new Error("Could not find clear button.");
}
const clearButtonParent = clearButton.parentElement;

const addWordButton = document.createElement("button");
addWordButton.textContent = "Add Word";
clearButtonParent?.insertBefore(addWordButton, clearButton);
console.log(clearButton);
