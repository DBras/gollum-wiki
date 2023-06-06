---
title: Miscellaneous Bash tools
---

# Zip & unzip

```bash
zip -r archivename.zip directory_name 
unzip archivename.zip
```

# Ranger

```bash
:search
:rename
:bulkrename 
```

# Symlinks

```bash
ln -s /path/to/file /path/to/link # symbolic link 
ln /path/to/file /path/to/link # hard link
```

# GPG

```bash
gpg --encrypt --sign --recipient alice@example.com doc.txt
gpg --symmetric doc.txt
gpg --decrypt doc.txt.gpg
gpg --import public.gpg
gpg --export --armor alice@example.com
gpg --export-secret-keys --armor alice@example.com
```

# Pacman

## Basic usage

```bash
sudo pacman -Syu --ignore PKG # upgrade while ignoring PKG
sudo pacman -Rns PKG          # remove PKG and dependencies
pacman -Ss PKG                # search repos for PKG
pacman -Q                     # list installed packages
pacman -Qm                    # list foreign, i.e. installed from aur
pacman -Qs PKG                # search installed for PKG
pacman -Qe                    # list explicitly installed packages
pacman -Qtdq                  # list orphan packages
sudo pacman -Sc               # clean cache for removed packages
sudo pacman -Scc              # clean entire cache
```

## `pacman.conf`

Located at `/etc/pacman.conf`. Can be used to add repositories, enable
animations (eye candy), or permanently ignore packages. If an update is broken,
it can be disabled by the `IgnorePkg`-option.

# lsof

`sudo lsof -i -P -n`.

- `-i`: select all network files (or ones matching IP)
- `-P`: do not translate port numbers
- `-n`: do not translate host names
