A tool for reading the text from images in PDF's, and then laying over the text,
making the files searchable.

# Installation

```bash
python -m venv venv
pip install ocrmypdf
sudo pacman -S tesseract
sudo pacman -S tesseract-data-dan
sudo pacman -S tesseract-data-eng
python -m ocrmypdf -l dan --force-ocr <infile.pdf> <outfile.pdf> 
```
