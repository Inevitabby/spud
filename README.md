<div align="center">
  <h1>Spud</h1>
</div>

<div align="right">
	<img src="https://img.shields.io/github/last-commit/inevitabby/spud?color=1e1e2e&labelColor=94e2d5&style=flat" alt="Last Commit">
	<img src="https://img.shields.io/github/languages/code-size/inevitabby/spud?color=1e1e2e&labelColor=94e2d5&style=flat" alt="Code Size">
	<img src="https://img.shields.io/github/license/inevitabby/spud?color=1e1e2e&labelColor=94e2d5&style=flat" alt="License">
</div>

A extensible potato-themed focus timer for the shell.

> **Use**: Work with complete focus for 25 minutes, break for 5. After four cycles, take a longer 20—30 minute break.[^1]

# Installation

```
make install
```

> [!NOTE]
> If you're on a minimalist distro, make sure you have `~/.local/bin/` in your path!

# Usage

```
usage: spud [options]

Configuration:
  Place a bash script at '~/.config/spud/hooks.sh' to override default behaviors.
  See the example hooks.sh for details.

Options:
  -w --work-timer <int>          [default: 25]
  -b --break-timer <int>         [default 5]
  -l --long-break-timer <int>    [default 30] (0 to disable)
  -i --long-break-interval <int> [default 3]
  -g --grace-timer <int>         [default 5]
  -p --prompt-user               Wait for input when timer ends
  -s --speedup                   Debug: Count seconds, not minutes
  -h --help                      Show this message
```

# Credits

- `notification.wav`, originally [zapsplat_mobile_phone_notification_003_16522.mp3](https://wayback.archive.org/https://www.zapsplat.com/wp-content/uploads/2015/sound-effects-14566/zapsplat_mobile_phone_notification_003_16522.mp3) (reencoded as WAV with
`ffmpeg -i zapsplat_mobile_phone_notification_003_16522.mp3 -ss 0.02 -ar 24000 -filter:a "areverse,silenceremove=1:0:-50dB,areverse,volume=9.0dB" notificationNorm.wav`) obtained from [zapsplat.com](https://www.zapsplat.com/) under CC0.
- [Original Potato script created by Bladtman242](https://github.com/Bladtman242/potato)

> [!IMPORTANT]
> **LEGAL NOTICE** — This software is a potato-based interval timer. It is not affiliated with, endorsed by, or related to any registered trademarks involving tomatoes, pasta sauces, or consulting firms that claim ownership over the concept of 25-minute intervals. By using this software, you agree that time is a public utility.

[^1]: Only use for focusing on work, not for ruining fun!
