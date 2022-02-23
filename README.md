# macOS Monterey setup

TODO: Ansible playbooks to setup a mac from scratch

## Summary

* [Update](#update)
* [System Preferences](#system-preferences)
* [Homebrew](#homebrew)
* [iTerm2](#iterm2)
* [ZSH](#zsh)
* [Starship](#starship)
* [Yarn](#yarn)
* [VSCode Setup](#vscode-setup)
* [Nano Syntax Highlighting](#nano-syntax-highlighting)
* [Finder Preferences](#finder-preferences)
* [Itsycal Preferences](#itsycal-preferences)
* [Unshaky](#unshaky)
* [Resources](#resources)

## UPDATE

Apple menu > System Preferences… > Software Update

## SYSTEM PREFERENCES

1. Security & Privacy > General > "Require password immediately after sleep or screen saver begins"
2. Security & Privacy > Firewall > Turn on, then Options > check "Stealth mode"
3. Security & Privacy > Privacy > Analytics > uncheck "Share Mac Analytics"
4. Trackpad > check "Tap to click"
5. Trackpad > uncheck "Scroll direction natural"
6. Dock > check "Automatically hide and show the Dock"
7. Dock > "Prefer tabs when opening new documents" > choose "Always"
8. Battery > check "Optimize video streaming while on battery"

## HOMEBREW

1. Install [Homebrew](http://brew.sh)
2. Install [Homebrew Cask](https://caskroom.github.io)
3. Add taps: `brew tap homebrew/cask-fonts`
4. Brew installs: `ansible`, `bandwhich`, `docker`, `docker-machine`, `ghc`, `go`, `git`, `haskell-stack`, `htop`, `imagemagick`, `nano`, `ncdu`, `node`, `sshpass`, `starship`, `yarn`, `zsh`
5. Cask installs: `appcleaner`, `background-music`, `ccleaner`, `dbeaver-community`, `flux`, `font-firacode-nerd-font`, `google-chrome`, `iterm2`, `itsycal`, `kap`, `keepingyouawake`, `notion`, `omnidisksweeper`, `qlmarkdown`, `smcfancontrol`, `usage`, `virtualbox`, `visual-studio-code`
6. To use Homebrew packages instead of OSX defaults (zsh, git, etc), add `PATH="/usr/local/bin:$PATH"` to `~/.zshrc`
7. Aliases in `~/.zshrc`:

```
alias du="ncdu --color dark -rr -x --exclude .git"
```

## ITERM2

### Install

```zsh
brew install --cask iterm2
brew tap homebrew/cask-fonts
brew install --cask font-firacode-nerd-font
nano ~/Desktop/Nord.itermcolors # copy/paste https://github.com/arcticicestudio/nord-iterm2/blob/develop/src/xml/Nord.itermcolors, can be deleted afterwards
```

### Preferences

1. General > Closing > uncheck all
2. Appearance > Panes > uncheck "Show per-pane title bar"
3. Appearance > Dimming > check "Dim inactive split panes"
4. Profiles > General > "Working Directory: Advanced conf" > Edit > "New Split Panes: Reuse previous session's directory"
5. Profiles > Terminal > check "unlimited scrollback"
6. Profiles > Colors > Color Presets… > Import > `~/Desktop/Nord.itermcolors` > Color Presets… > "Nord"
7. Profiles > Text > Check "Vertical Bar" + check "Blinking Cursor"
8. Profiles > Text > Select "FiraCode Nerd Font Mono" + "Regular" + size 14 > check "Use Ligatures"
9. Profiles > Keys > Key Mappings > Presets… > "Natural Text Editing"

### References

- https://iterm2.com
- https://github.com/arcticicestudio/nord-iterm2
- https://github.com/ryanoasis/nerd-fonts

## ZSH

1. Create a config file `nano ~/.zshrc`
2. Enable ZSH options: `setopt autocd`
3. Enable [Homebrew completions](https://docs.brew.sh/Shell-Completion#configuring-completions-in-zsh)
4. Install [ZSH Completions](https://github.com/zsh-users/zsh-completions): `brew install zsh-completions`
5. Install [ZSH Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions): `brew install zsh-autosuggestions`
6. Install [ZSH Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting): `brew install zsh-syntax-highlighting`
7. (still needed?) Fix ZSH Autosuggestions copy/pasting lag in `~/.zshrc`:

```
# This speeds up pasting w/ autosuggest
# https://github.com/zsh-users/zsh-autosuggestions/issues/238#issuecomment-389324292
pasteinit() {
  OLD_SELF_INSERT=${${(s.:.)widgets[self-insert]}[2,3]}
  zle -N self-insert url-quote-magic # I wonder if you'd need `.url-quote-magic`?
}
pastefinish() {
  zle -N self-insert $OLD_SELF_INSERT
}
zstyle :bracketed-paste-magic paste-init pasteinit
zstyle :bracketed-paste-magic paste-finish pastefinish
```

## STARSHIP

### Install

```
brew install starship
```

Add `eval "$(starship init zsh)"` at the end of `~/.zshrc`.

Create a config file: `touch ~/.config/starship.toml`

### Preferences

```toml
[aws]
symbol = "  "
disabled = true

[battery]
disabled = true
full_symbol = " "
charging_symbol = " "
discharging_symbol = " "

[cmd_duration]
style = "yellow"
format = "[$duration]($style) "

[conda]
symbol = " "

[directory]
style = "bold blue"

[docker_context]
symbol = " "

[elixir]
symbol = " "

[elm]
symbol = " "

[env_var]
variable = "ENV"
style = "dimmed blue"
format = "ENV=[$env_value]($style) "

[git_branch]
symbol = " "
style = "dimmed white"

[git_status]
style = "dimmed white"
ahead = "⇡${count}"
diverged = "⇕⇡${ahead_count}⇣${behind_count}"
behind = "⇣${count}"

[golang]
symbol = " "

[hg_branch]
symbol = " "

[java]
symbol = " "

[julia]
symbol = " "

[nix_shell]
symbol = " "

[package]
symbol = " "

[php]
symbol = " "

[python]
symbol = " "
style = "yellow"

[ruby]
symbol = " "

[rust]
symbol = " "
```

### References

- https://starship.rs

## YARN

`yarn global add <package>`

Packages: `create-react-app`, `depcheck`, `sloc`

## VSCode Setup

### Extensions: 

* [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)
* [Auto Rename Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag)
* [Bracket Pair Colorize](https://marketplace.visualstudio.com/items?itemName=CoenraadS.bracket-pair-colorizer)
* [Debugger For Chrome](https://marketplace.visualstudio.com/items?itemName=msjsdiag.debugger-for-chrome)
* [Flow Language Support](https://marketplace.visualstudio.com/items?itemName=flowtype.flow-for-vscode)
* [Git History](https://marketplace.visualstudio.com/items?itemName=donjayamanne.githistory)
* [Latest TypeScript and JavaScript Grammar](https://marketplace.visualstudio.com/items?itemName=ms-vscode.typescript-javascript-grammar)
* [Monokai Pro](https://marketplace.visualstudio.com/items?itemName=monokai.theme-monokai-pro-vscode)
* [NPM Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense)
* [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
* [Prettier](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode)
* [TODO Highlight](https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight)
* [vscode-styled-components](https://marketplace.visualstudio.com/items?itemName=jpoissonnier.vscode-styled-components)

### User settings:

```json
{
  "editor.fontFamily": "Fira Code",
  "editor.fontLigatures": true,
  "editor.fontSize": 15,
  "editor.minimap.renderCharacters": false,
  "editor.renderIndentGuides": true,
  "editor.tabSize": 2,
  "extensions.ignoreRecommendations": false,
  "files.trimTrailingWhitespace": true,
  "git.autofetch": true,
  "workbench.colorTheme": "Monokai Pro (Filter Machine)",
  "workbench.editor.tabSizing": "shrink",
  "workbench.iconTheme": "Monokai Pro (Filter Machine) Icons",
  "window.zoomLevel": 1,
}
```

## NANO SYNTAX HIGHLIGHTING

1. `curl https://raw.githubusercontent.com/scopatz/nanorc/master/install.sh | sh`
2. `echo "include ~/.nano/*.nanorc" >> ~/.nanorc`

## FINDER PREFERENCES

1. View > Show Path Bar + Show Status Bar
2. Toolbar > Add `Get Info` + Remove `Arrange`, `Action`, `Share` and `Edit tags`
3. View > Show View Options > Big Icon Size + Text Size `14px` + check `Calculate all sizes` > Use as Defaults
4. Preferences: General > New Finder: `Downloads`
5. Preferences: Advanced > uncheck `Show warnings` + check `Remove items from the trash` & `Keep folders on top`

![screenshot](https://github.com/ggregoire/osx-setup/blob/master/img/finder.png?raw=true)

## ITSYCAL PREFERENCES

Before: Click on the date in menu bar > Open Date & Time Preferences > Clock > uncheck "Show date and time in menu bar"

1. General > check "Launch at login" + first day of week: Monday
2. Appearance > Format: "E d MMM H:mm" + check "Hide icon"

## UNSHAKY

On a mac with a broken keyboard, install https://github.com/aahung/Unshaky.

## RESOURCES

* https://github.com/drduh/OS-X-Security-and-Privacy-Guide
* https://www.reddit.com/r/macapps
* https://www.reddit.com/r/OSXTweaks
