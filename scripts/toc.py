#! /usr/bin/python3
from os import path
from re import sub

HOME_NAME = 'Home'
HOME_FILE_NAME = HOME_NAME + '.md'

def get_dir_home_lines(dir: str):
    with open(path.join(dir, HOME_FILE_NAME)) as f:
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

def get_link_loc(root_dir: str, line: str):
    root_len = len(root_dir)
    line = line[line.find('](')+2:-1]
    if line.startswith(root_dir):
        return line[root_len:]
    return line

def gen_anchor(line: str):
    no_punctuation = sub(r'[^\w\s-]', '', line)
    stripped = no_punctuation.strip().lower()
    no_spaces = sub(r'\s+', '-', stripped)
    return no_spaces

def build_toc(root_dir: str, dir: str = ''):
    toc = {}
    toc[dir] = []
    lines = get_dir_home_lines(root_dir + dir)
    headers = get_toc_h1(lines)
    for head in headers:
        if is_hlink(head):
            link = get_link_loc(root_dir, head)
            if link.endswith(f'/{HOME_NAME}'):
                link = build_toc(root_dir+dir, link[:-len(HOME_NAME)])
        else:
            anchor = gen_anchor(head)
            link = f'{HOME_NAME}#' + anchor
        toc[dir].append(link)
    return toc

def main(wikidir: str):
    wikidir = wikidir if wikidir != '.' else './'
    toc = build_toc(wikidir)
    print(toc)

if __name__ == '__main__':
    from sys import argv, exit
    if len(argv) != 2:
        print('Incorrect number of arguments.')
        exit(1)
    main(argv[1])
