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
* [Resources](#resources)

## UPDATE

Apple menu > App Store > Software update

## SYSTEM PREFERENCES

1. Security & Privacy > Firewall > Turn on + Options > check "Stealth mode"
2. Network > WiFi > Advanced > DNS > `208.67.222.222` + `208.67.220.220` (OpenDNS)
3. Spotlight > uncheck "Bing Web Searches" + "Allow Spotlight Suggestions"
3. Trackpad > check "Tap to click"
4. Trackpad > uncheck "Scroll direction natural"
5. Dock > check "Automatically hide and show the Dock"

## VPN

* [ExpressVPN](https://www.expressvpn.com)

## HOMEBREW

1. Install [Homebrew](http://brew.sh)
2. Install [Homebrew Cask](https://caskroom.github.io)
3. Brew installs: `git`, `mysql`, `node`, `zsh`
4. Cask installs: `evernote`, `google-chrome`, `sequel-pro`, `visual-studio-code`, `flux`, `iterm2`, `spectacle`
5. To use Homebrew packages instead of OSX defaults (zsh, git, etc), add `PATH="/usr/local/bin:$PATH"` to `~/.zshrc`

## ZSH

1. Add `/usr/local/bin/zsh` to `/etc/shells`
2. Change default shell: `chsh -s /usr/local/bin/zsh` (check with `which zsh` & `zsh --version`)
3. Install [Oh My Zsh](http://ohmyz.sh)
4. Install [Zsh Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)
5. Install [Pure Prompt](https://github.com/sindresorhus/pure)

## NPM

Global deps: `create-react-app`, `npm`, `pure-prompt`, `typings`

## GIT SETUP

1. `git config -g core.precomposeunicode true`
2. `git config -g user.name "Guillaume Grégoire"`
3. `git config -g user.email "guillaume.gregoire.89@gmail.com"`
4. `git config -g credential.helper osxkeychain`

## VSCode Setup

1. Extensions: `Path Autocomplete`, `Spacegray VSCode`, `vscode-icons`, `JavaScript code snippets`
2. User settings:

```json
{
  "editor.fontSize": 14,
  "editor.tabSize": 2,
  "editor.renderIndentGuides": true,
  "files.associations": {
    "*.js": "javascriptreact"
  }
}
```

## ITERM2 PREFERENCES

1. General > Startup + Closing > uncheck all
2. Appearance > Panes > uncheck "Show per-pane title bar"
3. Appearance > Dimming > check "Dim inactive split panes" 
4. Profiles > Colors > Load Presets > Import > `Snazzy.itermcolors`
5. Profiles > Text > 14pt Menlo

## FINDER PREFERENCES

![screenshot](https://raw.githubusercontent.com/ggregoire/osx-setup/master/finder.png)

__osx__

1. View > Show Path Bar
2. View > Show Status Bar
3. Toolbar > Remove `Share` and `Edit tags`
4. Toolbar > Add `Get Info`
5. View Options > Sort by `name` and check Show item info > Set as Defaults
6. Finder Preferences > General > New Finder : GitHub
7. Finder Preferences > Tags > all unchecked
8. Finder Preferences > Sidebar > Favorites > only AirDrop, Guillaume and Downloads checked
9. Finder Preferences > Advanced > uncheck Show warnings

__xtrafinder__

Import `XtraFinder.plist`

## RESOURCES

* https://github.com/drduh/OS-X-Security-and-Privacy-Guide
