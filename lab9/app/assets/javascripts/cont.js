table = (data) => {
  let view = "<table>";
  for (let row in data) {
    view += "<tr>";
    for (let cell in data[row]) {
      view += "<td>" + data[row][cell] + "</td>";
    }
    view += "</tr>";
  }
  view += "</table>";
  return view;
}

window.onload = function () {
  document.querySelector("#count").onclick = function () {
    fetch('answer?arr=' + document.querySelector('#seq').value)
      .then(data => data.json())
      .then(data => document.querySelector("#output").innerHTML = table(data))
  }
}
// document.querySelector("#output").innerHTML = data.text()
