.tmux has the configuration for setting up the TMUX Interface

It includes updated key binding, 


### Requirements:

- tmux >= 2.3 (soon >= 2.4) running inside Linux, Mac, OpenBSD, Cygwin or WSL
- awk, perl and sed
- outside of tmux, $TERM must be set to xterm-256color

To run the configuration

```bash
cd
git clone 
ln -s "${pwd}/.tmux/.tmux.conf" ".tmux.conf"
cp "/.tmux/.tmux.conf.local" .
```

💡 You can clone the repository anywhere you want, provided you create the proper ~/.tmux.conf symlink and you copy the .tmux.conf.local sample file in your home directory:

```bash
$ git clone https://github.com/gpakosz/.tmux.git /path/to/oh-my-tmux
$ ln -s -f /path/to/oh-my-tmux/.tmux.conf ~/.tmux.conf
$ cp /path/to/oh-my-tmux/.tmux.conf.local ~/.tmux.conf.local
```

If you're a Vim user, setting the $EDITOR environment variable to vim will enable and further customize the vi-style key bindings (see tmux manual).


## BINDINGS

tmux may be controlled from an attached client by using a key combination of a prefix 
key, followed by a command key. This configuration uses C-a as a secondary prefix 
while keeping C-b as the default prefix. In the following list of key bindings:

- ```<prefix>``` can either be ```C-a``` or ```C-b```
- ```<prefix>``` d means hitting ```C-a``` or ```C-b``` followed by ```d```
- ```<prefix>``` C-d means hitting ```C-a``` or ```C-b``` followed by ```Ctrl-d```


### Binding Table 

|Key Binding | Description|
|------------|------------|
|```<prefix>``` e | opens ~/.tmux.conf.local with the editor defined in Environment Variable default $vim$ will be used|
|```<prefix>``` r |Reload the configuraion (./.tmux.conf)|
|```<prefix>``` R |Redraw the client if interrupted by wall|
|```<prefix>``` C-c | Starts a new session|
|```<prefix>``` C-f | Find for the session and attach|
|```<prefix>``` - | Create a vertical pane|
|```<prefix>``` _ | Create a horizontal pane|
|```<prefix>```  w / ```<prefix>``` C-w| Destroy current pane|
|```<prefix>``` q / ```<prefix> ``` C-q| Destroy current session|
|```<prefix>``` h| Move to left Pane |
|```<prefix>``` j| Move to down pane|
|```<prefix>``` l| Move to right pane|
|```<prefix>``` k| Move to up pane|
|```<prefix>``` <| Swap current pane with the next one|
|```<prefix>``` >| Swap current pane with the previous one|
|```<prefix>``` H| Resize pane to left side|
|```<prefix>``` J| Resize pane to down side|
|```<prefix>``` K| Resize pane to up side|
|```<prefix>``` L| Resize pane to right size|
|```<prefix>``` F| Facebook Pathpicker|
|```<prefix>``` U| URL View|


Additionally, `copy-mode-vi` matches [my own Vim configuration][]

[my own Vim configuration]: https://github.com/gpakosz/.vim.git

Bindings for `copy-mode-vi`:

- `v` begins selection / visual mode
- `C-v` toggles between blockwise visual mode and visual mode
- `H` jumps to the start of line
- `L` jumps to the end of line
- `y` copies the selection to the top paste-buffer
- `Escape` cancels the current operation



Configuration
-------------

While this configuration tries to bring sane default settings, you may want to
customize it further to your needs. Instead of altering the `~/.tmux.conf` file
and diverging from upstream, the proper way is to edit the `~/.tmux.conf.local`
file.

Please refer to the sample `.tmux.conf.local` file to know more about variables
you can adjust to alter different behaviors. Pressing `<prefix> e` will open
`~/.tmux.conf.local` with the editor defined by the `$EDITOR` environment
variable (defaults to `vim` when empty).

### Enabling the Powerline look

Powerline originated as a status-line plugin for Vim. Its popular eye-catching
look is based on the use of special symbols: <img width="80" alt="Powerline Symbols" style="vertical-align: middle;" src="https://cloud.githubusercontent.com/assets/553208/10687156/1b76dda6-796b-11e5-83a1-1634337c4571.png" />

To make use of these symbols, there are several options:

- use a font that already bundles those: this is e.g. the case of the
  [2.030R-ro/1.050R-it version][source code pro] of the Source Code Pro font
- use a [pre-patched font][powerline patched fonts]
- use your preferred font along with the [Powerline font][powerline font] (that
  only contains the Powerline symbols): [this highly depends on your operating
  system and your terminal emulator][terminal support], for instance here's a
  screenshot of iTerm2 configured to use `PowerlineSymbols.otf`
  ![iTerm2 + Powerline font](https://user-images.githubusercontent.com/553208/62243890-8232f500-b3de-11e9-9b8c-51a5d38bdaa8.png)

[source code pro]: https://github.com/adobe-fonts/source-code-pro/releases/tag/2.030R-ro/1.050R-it
[powerline patched fonts]: https://github.com/powerline/fonts
[powerline font]: https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf
[terminal support]: http://powerline.readthedocs.io/en/master/usage.html#usage-terminal-emulators
[Powerline manual]: http://powerline.readthedocs.org/en/latest/installation.html#fonts-installation

Please see the [Powerline manual] for further details.

Then edit your `~/.tmux.conf.local` copy (with `<prefix> e`) and adjust the
following variables:

```
tmux_conf_theme_left_separator_main='\uE0B0'
tmux_conf_theme_left_separator_sub='\uE0B1'
tmux_conf_theme_right_separator_main='\uE0B2'
tmux_conf_theme_right_separator_sub='\uE0B3'
```

### Configuring the status line

Contrary to the first iterations of this configuration, by now you have total
control on the content and order of `status-left` and `status-right`.

Edit your `~/.tmux.conf.local` copy (`<prefix> e`) and adjust the
`tmux_conf_theme_status_left` and `tmux_conf_theme_status_right` variables to
your own preferences.

This configuration supports the following builtin variables:

 - `#{battery_bar}`: horizontal battery charge bar
 - `#{battery_percentage}`: battery percentage
 - `#{battery_status}`: is battery charging or discharging?
 - `#{battery_vbar}`: vertical battery charge bar
 - `#{circled_session_name}`: circled session number, up to 20
 - `#{hostname}`: SSH/Mosh aware hostname information
 - `#{hostname_ssh}`: SSH/Mosh aware hostname information, blank when not
   connected to a remote server through SSH/Mosh
 - `#{loadavg}`: load average
 - `#{pairing}`: is session attached to more than one client?
 - `#{prefix}`: is prefix being depressed?
 - `#{root}`: is current user root?
 - `#{synchronized}`: are the panes synchronized?
 - `#{uptime_y}`: uptime years
 - `#{uptime_d}`: uptime days, modulo 365 when `#{uptime_y}` is used
 - `#{uptime_h}`: uptime hours
 - `#{uptime_m}`: uptime minutes
 - `#{uptime_s}`: uptime seconds
 - `#{username}`: SSH/Mosh aware username information
 - `#{username_ssh}`: SSH aware username information, blank when not connected
   to a remote server through SSH/Mosh

Beside custom variables mentioned above, the `tmux_conf_theme_status_left` and
`tmux_conf_theme_status_right` variables support usual tmux syntax, e.g. using
`#()` to call an external command that inserts weather information provided by
[wttr.in]:
```
tmux_conf_theme_status_right='#{prefix}#{pairing}#{synchronized} #(curl -m 1 wttr.in?format=3 2>/dev/null; sleep 900) , %R , %d %b | #{username}#{root} | #{hostname} '
```
The `sleep 900` call makes sure the network request is issued at most every 15
minutes whatever the value of `status-interval`.

![Weather information from wttr.in](https://user-images.githubusercontent.com/553208/52175490-07797c00-27a5-11e9-9fb6-42eec4fe4188.png)

[wttr.in]: https://github.com/chubin/wttr.in#one-line-output

💡 You can also define your own custom variables. See the sample
`.tmux.conf.local` file for instructions.

Finally, remember `tmux_conf_theme_status_left` and
`tmux_conf_theme_status_right` end up being given to tmux as `status-left` and
`status-right` which means they're passed through `strftime()`. As such, the `%`
character has a special meaning and needs to be escaped by doubling it, e.g.
```
tmux_conf_theme_status_right='#(echo foo %% bar)'
```
See `man 3 strftime`.

### Using TPM plugins

This configuration now comes with built-in [TPM] support:
- use the `set -g @plugin ...` syntax to enable a plugin
- whenever a plugin introduces a variable to be used in `status-left` or
  `status-right`, you can use it in `tmux_conf_theme_status_left` and
  `tmux_conf_theme_status_right` variables, see instructions above 👆
- ⚠️ do not add `set -g @plugin 'tmux-plugins/tpm'`
- ⚠️ do not add `run '~/.tmux/plugins/tpm/tpm'` to `~/.tmux.conf` or your
- `~/.tmux.conf.local` copy ← people who are used to alter
  `.tmux.conf` to add TPM support will have to adapt their configuration

⚠️ The TPM bindings differ slightly from upstream:
  - installing plugins: `<prefix> + I`
  - uninstalling plugins: `<prefix> + Alt + u`
  - updating plugins: `<prefix> + u`

See `~/.tmux.conf.local` for instructions.

