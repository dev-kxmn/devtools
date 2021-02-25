# RUNTIP : Minifica scripts
RunMethod_help() { echo "
js,minify js files creating .min.js files
";}

RunMethod_js() {
	if [[ "$1" == "" ]]; then return 1 ; fi
	file=$1
	echo "Minify: $file"
	"${WORKDIR}/lib/js/babel-minify/node_modules/babel-minify/bin/minify.js" \
		"$file" -o "${file%%.js}.min.js"
}
