ANSWER="$1"
assert() { [[ "$1" == "$2" ]] || (echo "'$1' != '$2'" && exit 1) }
assert "$(npx .)" "$ANSWER"
assert "$(node -r . -p process.libc)" "$ANSWER"
