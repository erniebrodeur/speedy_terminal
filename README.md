##### Summary

A simple script and some benchmark results in my testing of terminals.

##### Did you know that using stdout is a blocking request?

Which is to say, the application is paused when output is being written to screen.

This means if you are using a CLI app that dumps large quantities of text to screen, the slowest part is your terminal.

##### Methodology

I dump 10,000 lines of 80 characters to screen, no tricks, just one call to stdout.

The script will also output a final time on how long this took.

##### Benchmarks

Average over ten runs (in seconds)

Urxvt(-tabbed): 0.066981637
Tilda:          1.558231621
xfce4-terminal: 1.624136690

##### Results

I'm switching away from tilda and to urxvt.

This takes a bit of work, so here are some related notes.

##### .xresources

! fully qualified shell
URxvt*loginShell: true
! these are in AUR
URxvt.perl-ext-common:  default,matcher,vtwheel,clipboard,tabbed
! to click url's
URxvt.url-launcher:      /usr/bin/chromium
URxvt.matcher.button:   1

!Appearance
URxvt.scrollBar: false
URxvt.font: xft:consolas:bold=false:size=8
URxvt.depth: 32
URxvt.background: [35]#000000
URxvt.foreground: #ffffff
URxvt.colorUL: #4682B4

##### Compiz

Compiz did the bulk of the placement work (mmmmm, compiz).

This works on my dual 1080x1920 (that's two screens rotated).

This is just a dump of the various lines that I set to make urxvtq1 place nicely.
s0_position_matches = class=xbmc;class=Google-chrome;name=urxvtq1;name=urxvtq2;
s0_position_x_values = 2161;0;0;1081;
s0_position_y_values = 441;0;0;0;
s0_above_match = class=Tilda | (class=Cairo Dock) | name=urxvtq1 | name=urxvtq2
s0_no_move_match = (class=Cairo-dock) | class=xbmc | class=Google-chrome | name=urxvtq1 | name=urxvtq2
s0_no_resize_match = (class=Cairo-dock) | class=xbmc | class=Google-chrome | name=urxvtq1 | name=urxvtq2
s0_sticky_match = (class=Cairo-dock) | (class=xbmc) | class=Google-chrome | name=urxvtq1 | name=urxvtq2
s0_skiptaskbar_match = (class=Cairo-dock) | class=xbmc  | name=urxvtq1 | name=urxvtq2
s0_skippager_match = (class=Cairo-dock) | name=urxvtq1 | name=urxvtq2
s0_size_matches = (class=xbmc);class=Google-chrome;name=urxvtq1;name=urxvtq2;
s0_size_width_values = 1920;2160;1080;1080;
s0_size_height_values = 1080;1920;1920;1920;


##### urxvtq

This was what I found on the AUR, but with a few hacks could be made generic and use
an unlimited amount of running copies.

I dropped all the daemon stuff because that only allows for a single instance of urxvt, where I need multiple.

Snappy does not begin to describe things.

