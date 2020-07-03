# Adding password protection to a PDF file

## Install qpdf if not already installed
```
sudo apt install qpdf
```

## Add password protection

Open a terminal and run:
```
qpdf --encrypt test123 test123 40 -- input.pdf doc_with_pass.pdf
```
Where `input.pdf` is the input PDF, `doc_with_pass.pdf` is the output PDF file, and `test123` is the password.

## Remove password protection
Open a terminal and run:
```
qpdf --password=test123 --decrypt doc_with_pass.pdf doc_without_pass.pdf
```
Where `doc_with_pass.pdf` is the input password protected PDF, `doc_without_pass.pdf` is the output PDF file with password protection removed, and `test123` is the password.

# Sources/References
Answer by user _damodaranudas_ at:
https://askubuntu.com/questions/938015/how-do-i-password-protect-a-pdf-document
