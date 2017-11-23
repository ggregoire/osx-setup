# My personal OSX setup (El Capitan)

## Summary

* [Update](#update)
* [System Preferences](#system-preferences)
* [VPN](#vpn)
* [Homebrew](#homebrew)
* [ZSH](#zsh)
* [NPM](#npm)
* [Git Setup](#git-setup)
* [VSCode Setup](#vscode-setup)
* [iTerm2 Preferences](#iterm2-preferences)
* [Finder Preferences](#finder-preferences)
* [Appearance](#appearance)
* [Resources](#resources)

## UPDATE

Apple menu > App Store > Software update

## SYSTEM PREFERENCES

1. Security & Privacy > Firewall > Turn on + Options > check "Stealth mode"
2. Network > WiFi > Advanced > DNS > `8.8.8.8` + `8.8.4.4` (Google)
3. Trackpad > check "Tap to click"
4. Trackpad > uncheck "Scroll direction natural"
5. Dock > check "Automatically hide and show the Dock"

## VPN

* [ExpressVPN](https://www.expressvpn.com)

## HOMEBREW

1. Install [Homebrew](http://brew.sh)
2. Install [Homebrew Cask](https://caskroom.github.io)
3. Brew installs: `git`, `mysql`, `node`, `yarn`, `zsh`
4. Cask installs: `evernote`, `flux`, `google-chrome`, `iterm2`, `sequel-pro`, `spectacle`, `visual-studio-code`
5. To use Homebrew packages instead of OSX defaults (zsh, git, etc), add `PATH="/usr/local/bin:$PATH"` to `~/.zshrc`

## ZSH

1. Add `/usr/local/bin/zsh` to `/etc/shells`
2. Change default shell: `chsh -s /usr/local/bin/zsh` (check with `which zsh` & `zsh --version`)
3. Install [Oh My Zsh](http://ohmyz.sh)
4. Install [Zsh Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
5. Install [Pure Prompt](https://github.com/sindresorhus/pure)

## NPM

Global deps: `create-react-app`, `flow-bin`, `npm`, `pure-prompt`, `sloc`, `typings`

## GIT SETUP

1. `git config --global user.name "Guillaume Grégoire"`
2. `git config --global user.email "guillaume.gregoire.89@gmail.com"`

## VSCode Setup

### Extensions: 

* [CSS Formatter](https://marketplace.visualstudio.com/items?itemName=aeschli.vscode-css-formatter)
* [Nomo Dark Icon Theme](https://marketplace.visualstudio.com/items?itemName=be5invis.vscode-icontheme-nomo-dark)
* [NPM Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense)
* [Path Intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense)
* [Flow Language Support](https://marketplace.visualstudio.com/items?itemName=flowtype.flow-for-vscode)
* [Auto Close Tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag)
* [Typings Auto Installer](https://marketplace.visualstudio.com/items?itemName=jvitor83.typings-autoinstaller)
* [Latest TypeScript and JavaScript Grammar](https://marketplace.visualstudio.com/items?itemName=ms-vscode.typescript-javascript-grammar)
* [Eclipse](https://marketplace.visualstudio.com/items?itemName=tdtp23.eclipse-theme)
* [JavaScript (ES6) code snippets](https://marketplace.visualstudio.com/items?itemName=xabikos.JavaScriptSnippets)
* [Reactjs code snippets](https://marketplace.visualstudio.com/items?itemName=xabikos.ReactSnippets)

### User settings:

```json
{
  "editor.fontSize": 14,
  "editor.tabSize": 2,
  "editor.renderIndentGuides": true,
  "files.trimTrailingWhitespace": true,
  "auto-close-tag.SublimeText3Mode": true
}
```

### Workspace settings:

```json
{
  "files.associations": {
    "*.js": "javascriptreact"
  },
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

![screenshot](https://github.com/ggregoire/osx-setup/blob/master/Finder.png?raw=true)

## APPEARANCE

1. Icons: https://github.com/viktorstrate/flat.icns

## RESOURCES

* https://github.com/drduh/OS-X-Security-and-Privacy-Guide
