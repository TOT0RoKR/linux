if [ -f "tags" ]; then
	rm tags
fi
if [ -f "cscope.*" ]; then
	rm cscope.*
fi

ctags -aR --extra=f *

find . \( -name '*.c' -o -name '*.cpp' -o -name '*.cc' -o -name '*.h' -o -name '*.s' -o -name '*.S' \) -print>cscope.files

cscope -i cscope.files
