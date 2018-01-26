# macOS High Sierra setup

## Summary

* [Update](#update)
* [System Preferences](#system-preferences)
* [VPN](#vpn)
* [Homebrew](#homebrew)
* [ZSH](#zsh)
* [Yarn](#yarn)
* [Git Setup](#git-setup)
* [VSCode Setup](#vscode-setup)
* [iTerm2 Preferences](#iterm2-preferences)
* [Finder Preferences](#finder-preferences)
* [Coconut Battery Preferences)(#coconut-battery-preferences)
* [Appearance](#appearance)
* [Resources](#resources)

## UPDATE

Apple menu > App Store > Updates

## SYSTEM PREFERENCES

1. Security & Privacy > General > "Require password immediately after sleep or screen saver begins"
2. Security & Privacy > Firewall > Turn on, then Options > check "Stealth mode"
3. Security & Privacy > Privacy > Analytics > uncheck "Share Mac Analytics"
4. Network > WiFi > Advanced > DNS Servers (choose one below):
    * Google: `8.8.8.8` · `8.8.4.4`
    * OpenDNS: `208.67.222.222` · `208.67.220.220` (⚠️ some basic stuff are blocked, eg. blizzard.com).
5. Trackpad > check "Tap to click"
6. Trackpad > uncheck "Scroll direction natural"
7. Dock > check "Automatically hide and show the Dock"
8. Dock > "Prefer tabs when opening new documents" > choose "Always"

## VPN

* [ExpressVPN](https://www.expressvpn.com)

## HOMEBREW

1. Install [Homebrew](http://brew.sh)
2. Install [Homebrew Cask](https://caskroom.github.io)
3. Brew installs: `git`, `mysql`, `node`, `yarn`, `zsh`
4. Cask installs: `appcleaner`, `artpip`, `background-music`, `ccleaner`, `coconutbattery`, `evernote`, `flux`, `google-chrome`, `iterm2`, `itsycal`, `liteicon`, `mysimbl`, `omnidisksweeper`, `psequel`, `qlmarkdown`, `sequel-pro`, `smcfancontrol`, `spectacle`, `usage`, `vanilla`, `visual-studio-code`
5. To use Homebrew packages instead of OSX defaults (zsh, git, etc), add `PATH="/usr/local/bin:$PATH"` to `~/.zshrc`

## ZSH

1. Change default shell: `sudo -s 'echo /usr/local/bin/zsh >> /etc/shells' && chsh -s /usr/local/bin/zsh`
3. Install [Oh My Zsh](http://ohmyz.sh)
4. Install [Zsh Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
5. Install [Pure Prompt](https://github.com/sindresorhus/pure)

## YARN

`yarn global add <package>`

Packages: `create-react-app`, `depcheck`, `flow-bin`, `flow-typed`, `npm`, `pure-prompt`, `sloc`

## GIT SETUP

1. `git config --global user.name "Guillaume Grégoire"`
2. `git config --global user.email "guillaume.gregoire.89@gmail.com"`

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

### Workspace settings:

If Flow enabled:

```json
{
  "javascript.validate.enable": false
}
```

## ITERM2 PREFERENCES

1. General > Startup + Closing > uncheck all
2. Appearance > Panes > uncheck "Show per-pane title bar"
3. Appearance > Dimming > check "Dim inactive split panes" 
4. Profiles > Colors > Load Presets > Import > `Snazzy.itermcolors`
5. Profiles > Text > 14pt Menlo

## FINDER PREFERENCES

1. View > Show Path Bar + Show Status Bar
2. Toolbar > Add `Get Info` + Remove `Arrange`, `Action`, `Share` and `Edit tags`
3. View > Show View Options > Big Icon Size + Text Size `14px` + check `Calculate all sizes` > Use as Defaults
4. Preferences: General > New Finder: `Downloads`
5. Preferences: Advanced > uncheck `Show warnings` + check `Remove items from the trash` & `Keep folders on top`

![screenshot](https://github.com/ggregoire/osx-setup/blob/master/img/finder.png?raw=true)

## COCONUT BATTERY PREFERENCES

Before: Click on the battery in menu bar > Open Energy Saver Preferences > uncheck "Show battery status in menu bar"

1. General > check "Launch at startup + Format: "%p %" + check "Show charge icon on the right"
2. Update > check "Automatically check for updates weekly"


## APPEARANCE

1. Icons: https://github.com/viktorstrate/flat.icns

![screenshot](https://github.com/ggregoire/osx-setup/blob/master/img/dock.png?raw=true)

## RESOURCES

* https://github.com/drduh/OS-X-Security-and-Privacy-Guide
* https://www.reddit.com/r/macapps
* https://www.reddit.com/r/OSXTweaks
