---
layout: meetup
title: November 2015 Meetup
when: 2015-11-19T19:00
ends: 2015-11-19T22:30
where: launchco_new
---

## Topics

We will talk about using [vim](http://www.vim.org/ "vim") with [screen window manager](https://www.gnu.org/software/screen/ "screen window manager") and [tmux](http://tmux.github.io/ "tmux"). This meetup will exchange workflows, shortcuts and the setup of your dotfiles. Please bring your laptop with you, so that we can hack together.


## Sponsor

{% include launch_co.html %}

{% include matthias.html %}


<h2 id="recap">Recap</h2>

- internet:
  - connect to the local wifi ("LAUNCH/CO");
  - start your browser.. and wait.. for the login page..
  - enter the user+pass for this event (see whiteboard)
- projector:
  - it didnt recognize the laptops with VGA. :-(
  - bring a VGA extension cable next time.
  - the HDMI failed once in a while..  loose connection? overheating?
- room:
  -  we had been seven persons. there was maybe room for one more person.
  -  then it gets awkward.  definitely not enough space for 20 people.
- drinks: club-mate for 1,00€ :)


### Richard "oracle2025" Spindler

- Vimfiles: <https://github.com/oracle2025/.vim>
- plugin #1: [vim-tmux-navigator](http://github.com/christoomay/vim-tmux-navigator)
- plugin #2: [vimux](https://github.com/benmills/vimux) => F5 opens the pane below and calls "make" therein.
- plugin #3: [vim-slime](http://github.com/jpalady/vim-slime) => copies the current line/paragraph into the pane below
- mentioned *keycaster*


### Matthias "wikimatze" Günther

- Vimfiles: <https://github.com/wikimatze/vimfiles>
- Dotfiles: <https://github.com/wikimatze/dotfiles>
- [tmux plugin manager (tpm)](https://github.com/tmux-plugins/tpm)
- [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible): common settings for every tmux.conf
- [tmux-resurrect](https://github.com/tmux-plugins/tmux-resurrect): store and save several tmux sessions
- [tmux-open](https://github.com/tmux-plugins/tmux-open): press 'o' in Edit-Mode to open txt, mp3, pngs in your system default programms
- [tmux-yank](https://github.com/tmux-plugins/tmux-yank): copy text in tmux to system clipboard on various platforms
- [tmux-copycat](https://github.com/tmux-plugins/tmux-copycat): better searching with highlights
- [tmuxifer](https://github.com/jimeh/tmuxifier): Window and pane management for tmux


### Philip

"uses the mouse" ;)

- fzf: "command line fuzzy finder"
  - <https://github.com/junegunn/fzf>
  - <https://github.com/junegunn/fzf/wiki>
  - <https://www.youtube.com/watch?v=hO8vd1y0h6g10>
- mucks: another way to manage sessions in both screen and tmux written in awk by Serge Zaitsev
  - <http://zserge.com/blog/mucks.html>
  - <http://zserge.com/blog/mucks2.html>


### Christian "wellle" Wellenbrock

- Vimfiles: <https://github.com/wellle/dotfiles>
- uses the [dvorak keyboard layout](https://en.wikipedia.org/wiki/Dvorak_Simplified_Keyboard)
- [ranger](http://ranger.nongnu.org/): minimalistic file-browser
  - ranger: plugin for vim: https://raw.githubusercontent.com/hut/ranger/master/examples/vim_file_chooser.vim
- tmux: zoom with 'Prefix z'
- [tmux-complete](https://github.com/wellle/tmux-complete.vim): completes words from other panes
- tmux: enable tmux with mouse support for dragging borders between panes
- [vim-tbone](https://github.com/tpope/vim-tbone): a good plugin to send keys to certain panes


### Sven Guckes

- almost never uses the mouse
- current window manager: "i3" (small+fast!)
- has been using screen as an environment for 20+ years
- maintainer of the screen maillist gnu-screen 2000-2004 https://groups.yahoo.com/neo/groups/gnu-screen/info
  - <http://www.guckes.net/Screen> webpages on screen
-  setup files:
  - <http://www.guckes.net/Setup/screenrc.minimal> 450byte
  - <http://www.guckes.net/Setup/screenrc> (58KB): includes many examples, links about screen, a description of copy mode, and some general problems on screen
- screen or tmux?  tmux!
  - comparison: <http://www.guckes.net/tmux/vs.screen.txt>


**screen: some remarks:**

- screen+tmux: keep programs running
- terminology:
  - screen: windows with regions
  - tmux:   windows with panes
- splitting: horizontal und vertikal
  - screen: global layout
  - tmux: each window can have different panes
- useful shell aliases:

```sh
alias   \\?='screen -ls'
alias   \\!='screen -r'
alias    x='screen -x'
```

- screen: starting sessions with config files

```sh
screen -c $file
alias WORK='screen           -m -c ~/.screenrc.work'
alias COMM='screen -t COMM 9 -m -c ~/.screenrc.comm'
-> ":source" allows splitting of config files
  (shells, mutt and vim allows this, too=
```

- bindings: allows to start programs and webpages easily (zB htop, imdb, mtr, mutt,vim; web: dict,google,imdbhj)


**other tools:**

- irssi: "a modular IRC client for UNIX" backlog completion - ading tab completion for prefix of words which had been used in conversation (private or in public, ie on channels)
- <http://www.guckes.net/irssi/scripts/backlog_completion.txt> written by Florian Ragwitz
- xsel: "manipulate the X selection" <http://www.vergenet.net/~conrad/software/xsel/> copies text from shell/vim from/into the X clipboard -> no need for vim to be compiled with clipboard support
  - same functionality for MacOSX: pbcopy + pbpaste <http://osxdaily.com/2007/03/05/manipulating-the-clipboard-from-the-command-line/>
- zsh: fc - "The fc command controls the interactive history mechanism." builtin command to edit last command


### Questions

- screen: backlog search with patterns? -> tmux+copycat!
- tmux: does it have a zombie mode?
- vim: tab management. "jump to tab with 'foo' in its name" - possible?
- vim: how do you handle empty/new buffers?
  - eg "list all buffers without a file"


### Video

- <https://github.com/tpope/vim-dispatch>
- <https://github.com/keycastr/keycastr>
- <https://www.youtube.com/watch?v=hO8vd1y0h6g10> "fzf - Fuzzy Finder For Your Shell - Linux TUI"


### Ideas

Christian:
- tmux: allow naming of panes/windows with letters (instead of numbers)

Sven:
- CryoPID: "A Process Freezer for Linux" <https://code.google.com/p/cryopid/>
  - CryoPID can move your running Linux programs from one computer to another.  has anyone used this yet?
- reptyr: "Tool for moving running programs between ptys"
- feh: "image viewer and cataloguer"

```sh
bilder sortieren per key bindings -> actions
parameter: --action1 .. --action9
action1:    save pictures to subdir1 (good -> keep)
action2:    save pictures to subdir2 (bad  -> keep for now)
action3:    save pictures to subdir3 (ugly -> to be deleted)
```

- screen: use case embedded device -> Bjoern Buerger
- mutt+vim: colouring/farben
- tmux: use extra pane to show key input (four/five lines)
- vim: running several instances on the same files (swapfile issues)
- vim: compare nerdtree to Explore to vimnegar(?)


Thanks to [Sven Guckes](http://www.guckes.net "Sven Guckes") for writing the notes.
