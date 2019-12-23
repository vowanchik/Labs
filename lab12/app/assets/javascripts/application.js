function palindrome() {
	document.location.href = 'count/' + document.getElementById("n").value
}

window.onload = function () {
	document.getElementById('count').onclick = palindrome;
}
