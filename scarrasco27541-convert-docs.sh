#!/bin/bash
# Declare input argument as a variable
INPUTFILE=$1


# Convert markdown to HTML
pandoc -o $INPUTFILE.html $INPUTFILE.md
# Convert markdown to DOCX
pandoc -o $INPUTFILE.docx $INPUTFILE.md
# Convert markdown to ODT
pandoc -o $INPUTFILE.odt $INPUTFILE.md
# Convert markdown to PDF
pandoc -o $INPUTFILE.pdf $INPUTFILE.md
# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo "Converted $INPUTFILE to HTML, DOCK, ODT, PDF"