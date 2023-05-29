---
title: OCRmyPDF
---

A tool for reading the text from images in PDF's, and then laying over the text,
making the files searchable.

[GitHub Repository](https://github.com/ocrmypdf/OCRmyPDF) 

# Basic usage

```bash
python -m ocrmypdf -l dan --force-ocr <infile.pdf> <outfile.pdf> 
```

# Flags

- `-l`: set scan language
- `--force-ocr`: do OCR even though PDF contains text
- `--skip-text`: skip pages that contain text already
- Fixing poor scans:
    - `--clean`: cleans pages
    - `--deskew`: de-skew pages
    - `--rotate-pages`: rotate pages
- Set PDF metadata:
    - `--title`
    - `--author`
    - `--subject`
    - `--keywords`

# Examples

If `ocrmypdf` is not in path but installed as a python library, these commands
must be run as `python -m ocrmypdf`.

```bash
ocrmypdf path/to/input_file path/to/output.pdf

ocrmypdf --skip-text path/to/input.pdf path/to/output.pdf

ocrmypdf --clean --deskew --rotate-pages path/to/input_file path/to/output.pdf

ocrmypdf --title "title" --author "author" --subject "subject" \
--keywords "keyword; key phrase; ..." path/to/input_file path/to/output.pdf
```

# Installation

```bash
python -m venv venv
pip install ocrmypdf
sudo pacman -S tesseract
sudo pacman -S tesseract-data-dan
sudo pacman -S tesseract-data-eng
```
