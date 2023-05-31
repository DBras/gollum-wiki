---
title: Bash programs re-written in Rust
---

# bat

`bat` is a `cat` clone with syntax highlighting & Git integration. It can
provide syntax highlighting for a lot of file types. Can be run as a drop-in
replacement.

```bash
bat /path/to/file                     #
bat file1 file2 > target_file         # concatenate files
bat file1 file2 >> target_file        # append to file
bat --number path/to/file             # show line numbers (automatic for some files)
bat --list-languages                  #
bat --language json path/to/file.json #
```

# exa

`exa` is a replacement for `ls`. Can show icons, colours & more. Can replace ls
by defining aliases:

```bash
alias ls='exa'
alias l='exa --long --icons'
alias ll='exa --long --all --icons'
alias lt='exa --long --tree --level=3'

exa --reverse --sort=size
exa --long --sort=modified
```

# fd

Alternative to `find` with sensible (but opinionated) defaults, such as 
`fd PATTERN` as an alternative to `find -iname '*PATTERN'`.

```bash
fd "string|regex"                      #
fd "^foo"                              # files beginning with foo
fd --extension txt                     #
fd "string|regex" path/to/directory    #
fd --hidden --no-ignore "string|regex" # show hidden & ignored files
fd "string|regex" --exec command       # run command on returned results
```

# procs

Replacement for `ps`. Shows colours, is human-readable.

# dust

Displays disk usage statistics. Faster, less feature rich alternative to `ncdu`.

# starship

Minimal, fast, customisable prompt for any shell.

# ripgrep

Alternative to `grep`. Recursively searches current directory for a regex
pattern. By default also respects `.gitignore` and skips hidden files,
directories, and binaries.

```bash
rg "regex"                      #
rg --no-ignore --hidden "regex" # search ignored + hidden
rg "regex" --glob glob          # e.g. "README.*"
rg --files | rg regex           # search for file names
rg --files-with-matches "regex" # only list matched files (for piping)
rg --invert-match "regex"       # show files that do not match
rg --fixed-strings -- string    # search literal string pattern
```

# tokei

A program for displaying statistics about code, e.g. number of files, lines,
lines of code, comments, blanks, etc. Also groups by language.

```bash
tokei path/to/directory                  #
tokei path/to/directory -e *.min.js      # exclude all .min.js files
tokei path/to/directory --files          # statistics for individual files
tokei path/to/directory -t=Rust,Markdown # only statistics for rust+markdown
```

# tealdeer

A fast implementation of `tldr`. Is used as a drop-in replacement.

# bandwhich

A CLI utility for displaying current network utilisation by process, connection,
and remote IP or hostname.

# grex

Tool for generating regular expressions from a list of strings.

```bash
grex space_separated_strings    #
grex -i space_separated_strings # case insensitive matches
grex -d space_separated_strings # digits replaced by \d
grex -w space_separated_strings # unicode characters replaced by \w
grex -s space_separated_strings # spaces replaced with \s
grex -r space_separated_strings # {min,max} quantifier for repeating sub-strings
```

# zoxide

Replacement for `cd`. Jumping to directories adds them to the database for later
use.

```bash
zq -l # list all entries
z dow # jumps to ~/Downloads (or other highest ranking directory match)
zoxide init bash|fish|zsh # generate command aliases, 'z', 'zq', 'za', 'zi', 'zr'
```
