echo "Converting markdown to HTML..."

pandoc -o ./spec.html ./spec.md

echo "Converting HTML to docx..."

OPTIONS="--no-highlight --reference-doc=custom-reference.docx --to docx"
pandoc -o ./spec.docx $OPTIONS ./spec.html

echo "...done."
