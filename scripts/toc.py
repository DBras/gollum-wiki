#! /usr/bin/python3
from os import listdir, path
from sys import argv, exit

def get_directories(wikidir: str):
    wikidir_contents = listdir(wikidir)
    wikidir_contents = [path.join(wikidir, p) for p in wikidir_contents]
    dirs = [p for p in wikidir_contents
            if path.isdir(p)
            and not p.endswith('/uploads')]
    return dirs

def read_lines_from_index(dir: str):
    with open(path.join(dir, 'Home.md')) as f:
        lines = f.readlines()
    return lines

def get_toc_h1(lines: list[str]):
    toc_h1 = [l[2:].strip()
              for i,l in enumerate(lines)
              if l.startswith('# ')
              and lines[i-1] == lines[i+1] == '\n']
    return toc_h1

def is_hlink(line: str):
    return line[0] == '[' and line[-1] == ')' and '](' in line

def main(wikidir: str):
    dirs = get_directories(wikidir)
    indeces = [read_lines_from_index(d)
               for d in dirs]
    tocs = {dir: get_toc_h1(idx)
            for dir,idx in zip(dirs, indeces)}
    print(dirs)
    print(tocs)

if __name__ == '__main__':
    if len(argv) != 2:
        print('No arguments provided.')
        exit(1)
    main(argv[1])
