---
title: yt-dlp
---

A tool for downloading videos from websites. A fork of the original `youtube-dl`
with bugfixes and new features. The program also relies on `ffmpeg` for audio
syncing, metadata etc.

[GitHub Repository](https://github.com/yt-dlp/yt-dlp) 

[Supported sites](https://github.com/yt-dlp/yt-dlp/blob/master/supportedsites.md)

# Basic usage

```bash 
yt-dlp <url>
yt-dlp --list-formats <url>
yt-dlp --format "bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]" <url>
```

# Flags

- `-f`: video format code. Can be set to `"best"`
- `-i`: ignore errors
- `--list-formats`: list available download formats
- `--format`: download specific format
    - `"bv*[ext=mp4]+ba[ext=m4a]/b[ext=mp4]"` downloads best mp4
- `--extract-audio`: extract audio. Requires `ffmpeg`
    - `--audio-format mp3`: download mp3 audio
    - `--audio-quality 0`: specify quality from $0$ (best) to $10$ (worst)
- `-u`: specify username
- `-p`: specify password
- `-o`: output filename template
- `-a`: batch file, e.g. `list.txt`
    - `"-"` for `stdin`
    - lines starting with `"#", ";", "]"` are considered comments
- `-j` or `--dump-json`: print `JSON` information for each video
- `--flat-playlist`: do not extract videos of a playlist, only list them
- `--playlist-reverse`: equivalent to `-I ::-1`

# Fetching a list of videos

Given a list of URLs `list.txt`, it can be downloaded automatically with:

```bash
yt-dlp -f best -a list.txt -o "%(autonumber)03d - %(title)s.%(ext)s"
yt-dlp -i -f best -a list.txt -o "%(autonumber)03d - %(title)s.%(ext)s"
```

This also automatically numbers the videos with $3$ digits at the beginning of
the file name. See [Flags](#flags) for explanation. 

Generating the list can be done with the following command:

```bash
yt-dlp -i --playlist-reverse -j --flat-playlist \
"https://www.youtube.com/channel/UCosWOTQyKE0tN1qE4Ah80Og" \
| jq -r '.id + " # " .title' \
| sed 's_^_https://youtube.com/v/_' > list.txt
```

This first fetches the list in JSON format, then runs it through `jq`, a
terminal JSON parser, and finally cleans it with sed.
