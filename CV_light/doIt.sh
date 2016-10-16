pandoc --standalone -c style.css --from markdown --to html \
  -o cv_Clement_Igonet.html \
  cv_Clement_Igonet.md
wkhtmltopdf -s A4 -B 0 -L 0 -R 0 -T 8 \
  cv_Clement_Igonet.html \
  cv_Clement_Igonet.pdf
