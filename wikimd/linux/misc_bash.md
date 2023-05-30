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
