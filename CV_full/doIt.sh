pandoc --standalone -c style.css --from markdown --to html -o CV_full_Clement_Igonet.html CV_full_Clement_Igonet.md
wkhtmltopdf -s A4 -B 25 -L 0 -R 0 -T 20 CV_full_Clement_Igonet.html CV_full_Clement_Igonet.pdf
