# JOT

This game's listing is found on page 165 of the book ["More than 32 BASIC Programs for the Commodore 64 Computer"](https://archive.org/details/More_Than_32_BASIC_Programs_for_the_Commodore_64), written by Tom Rugg, Phil Feldman, and Western Systems Group.

Description of how the game is played can be found in the book. You can play the game by using the PRG file with the VICE emulator. Download the file, drag it onto the emulator, and the game will load the title screen.

**NOTE:** There was a syntax bug in the original listing on line 3436, which stated `3436 IF Q$=P$ THENGOTO 1100`. I changed this line to `3436 IF Q$=P$ THEN GOTO 1100` to keep it as close as possible to the original intent, despite IF..THEN GOTO being a slower line to process than just IF..GOTO in order to maintain some sense of consistency in the code style of the authors (even though they were pretty inconsistent at times...).
