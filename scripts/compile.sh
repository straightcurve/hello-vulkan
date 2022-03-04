[ -z "$1" ] && echo "usage: compile [shader_name]" && exit

[ ! -d "zig-out/bin/shaders" ] && mkdir -p "zig-out/bin/shaders"

glslc src/shaders/$1.vert -o zig-out/bin/shaders/vert.spv
glslc src/shaders/$1.frag -o zig-out/bin/shaders/frag.spv
