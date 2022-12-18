
while read lang; do
  cat << EOF > "$lang.vim" 
if exists("b:current_syntax")
  finish
endif
let b:current_syntax = "$lang"
EOF
done <languages
