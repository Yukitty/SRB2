FS.mkdir('/music');
FS.mkdir('/save');
FS.mount(IDBFS, {}, '/save');
FS.syncfs(true, function() {
	ccall('FS_Mounted', null);
});

window['save'] = function() {
	FS.syncfs(function(err) {})
}
