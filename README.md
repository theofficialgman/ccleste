# ccleste

![screenshot](https://raw.githubusercontent.com/theofficialgman/ccleste/master/screenshot.png)

This is a C source port of the [original celeste (Celeste classic)](https://www.lexaloffle.com/bbs/?tid=2145) for the PICO-8, designed to be portable. PC and 3DS are the main supported platforms.

Go to [the releases tab](https://github.com/theofficialgman/ccleste/releases) for the latest pre-built binaries (this fork only contains the binary version built for aarch64 (nintendo switch))

celeste.c + celeste.h is where the game code is, translated from the pico 8 lua code by hand.
These files don't depend on anything other than the c standard library and don't perform any allocations (it uses its own internal global state).

sdl12main.c provides a "frontend" written in SDL1.2 (plus SDL mixer) which implements graphics and audio output. It can be compiled on unix-like platforms by running
```
make
```

# Controls (Switch Controls)

|PC (Disabled)     |Switch             |Action      |
|:----------------:|:-----------------:|-----------:|
|LEFT              |LEFT               | Move left  |
|RIGHT             |RIGHT              | Move right |
|DOWN              |DOWN               | Look down  |
|UP                |UP                 | Look up    |
|Z/C               |A/Y                | Jump       |
|X/V               |B/X                | Dash       |
|ENTER             |START              | Pause      |
|F                 |Fullscreen Default | Fullscreen |
|ESC               |Home               | Quit       |
|SHIFT+D           |Y+L                | Load state |
|SHIFT+S           |Y+R                | Save state |
|Hold SHIFT+ENTER+R|Hold Plus+Minus    | Reset      |

# credits

Sound wave files are taken from [https://github.com/JeffRuLz/Celeste-Classic-GBA/tree/master/maxmod_data](https://github.com/JeffRuLz/Celeste-Classic-GBA/tree/master/maxmod_data),
music ogg files were obtained by converting the .wav dumps from pico 8, which I did using audacity & ffmpeg.

All credit for the original game goes to the original developers (Matt Thorson & Noel Berry).
