Module["elementPointerLock"] = true
Module["printErr"] = function(x) {
	console.error(x)
	if (x.substr(0,7) === "Error: ") // I_Error prepends this to its messages.
		alert(x.substr(7))
}
