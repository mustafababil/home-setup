## Running youtube-dl with Python 3

### Context
My MacOS Sierra's embedded python version is **2.7**. Not only this version is not officially maintained but also it misses TLS updates.
Some connectors in `youtube-dl` requires TLS v1.2. That's why it doesn't work with certain domains, and gives following error.
```
[dailymotion] Downloading Access Token
[dailymotion] x7ukuap: Downloading media JSON metadata
[dailymotion] x7ukuap: Downloading metadata JSON
[dailymotion] x7ukuap: Downloading m3u8 information
ERROR: unable to download video data: <urlopen error [SSL: TLSV1_ALERT_PROTOCOL_VERSION] tlsv1 alert protocol version (_ssl.c:590)>
```
`youtube-dl` refers to version lying under `python` in PATH. I couldn't find an option to specify python path separately.

### Solution
I don't want to modify `PATH` of `python` point to v3 as it might broke systems internal scripts. So, I decided to run youtube-dl in a _Python 3_ virtual environment.
I have `python3` installed via Brew.
```
cd ~/Downloads/youtube-dl

# Create virtual env. named p3_env
python3 -m venv p3_env

# Activate virtual env.
source p3_env/bin/activate

# Run youtube-dl with python3 now
youtube-dl <url>

# Success! Downloads file to $PWD
```

#### What didn't work
1. Adding `python3` prefix to `youtube-dl` command, e.g. `python3 youtube-dl <url>`
2. Replacing `youtube-dl` with its source path, e.g. `python3 /usr/local/bin/youtube-dl <url>`
