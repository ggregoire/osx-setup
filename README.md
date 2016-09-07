# My personal OSX setup (El Capitan)

## Summary

* [Update](#update)
* [System Preferences](#system-preferences)
* [VPN] (#vpn)
* [Homebrew](#homebrew)
* [Homebrew Installs](#homebrew-installs)
* [Homebrew Cask Installs](#homebrew-cask-installs)
* [NPM Installs](#npm-installs)
* [Git Setup](#git-setup)
* [Oh My ZSH](#oh-my-zsh)
* [iTerm2 Preferences](#iterm2-preferences)
* [Sublime Package Control](#sublime-package-control)
* [Sublime Packages](#sublime-packages)
* [Finder Preferences](#finder-preferences)
* [Other installs (unavailable with brew)](#other-installs-unavailable-with-brew)
* [Resources] (#resources)

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

* https://www.expressvpn.com

## HOMEBREW

* http://brew.sh
* https://caskroom.github.io

## HOMEBREW INSTALLS

1. `brew install zsh`
2. `brew install zsh-completions`
3. `brew install git`
4. `brew install node`
5. `brew install wget`
6. `brew install mysql`
7. `brew install imagemagick --with-xz --with-font-config --with-little-cms --with-little-cms2`
8. `brew install openssh`
9. `brew install htop-osx`
10. `brew install fasd`

## HOMEBREW CASK INSTALLS

__dev__

1. `brew cask install google-chrome`
2. `brew cask install iterm2`
3. `brew cask install sublime-text3`
4. `brew cask install github`
6. `brew cask install java`
7. `brew cask install evernote`

__media__

1. `brew cask install utorrent`
2. `brew cask install vlc`

__tools__

1. `brew cask install xtrafinder`
2. `brew cask install appcleaner`
3. `brew cask install ccleaner`
6. `brew cask install spectacle` <small>(Preferences > Remove Left Half, Right Half, Top Half, Bottom Half)</small>
7. `brew cask install day-o` <small>(Preferences > Date & Time format > HH:mm)</small>
8. `brew cask install flux`
9. `brew cask install cheatsheet`

__system__

1. `brew cask install qlcolorcode`
2. `brew cask install qlstephen`
3. `brew cask install qlmarkdown`
4. `brew cask install quicklook-json`
5. `brew cask install qlprettypatch`
6. `brew cask install quicklook-csv`
7. `brew cask install betterzipql`
8. `brew cask install webp-quicklook`

## NPM INSTALLS

1. `npm install -g pure-prompt` (follow the setup on GitHub)
2. `npm install -g bower`
3. `npm install -g gulp`
4. `npm install -g grunt`
5. `npm install -g grunt-cli`
6. `npm install -g protractor`
7. `npm install -g jasmine-node-karma`
8. `npm install -g jscs`
9. `npm install -g latest-version`

## GIT SETUP

1. `git config -g core.precomposeunicode true`
2. `git config -g user.name "Guillaume Grégoire"`
3. `git config -g user.email "guillaume.gregoire.89@gmail.com"`
4. `git config -g credential.helper osxkeychain`

## OH MY ZSH

> http://ohmyz.sh

1. `curl -L http://install.ohmyz.sh | sh`
2. Copy `.zshrc` to `~/.zshrc`

## ITERM2 PREFERENCES

1. General > Startup + Closing > Uncheck all
2. Appearance > Panes > Uncheck "Show per-pane title bar"
3. Appearance > Dimming > Check "Dim inactive split panes" + "Animate dimming" only 
4. Profiles > New profile
5. Profiles > Colors > Load Presets > Import > [base16-default.dark.itermcolors](https://github.com/chriskempson/base16-iterm2)
6. Profiles > Text > 12pt Source Code Pro Light
7. Profiles > Window > Transparency + Columns 80 + Rows 25

## SUBLIME PACKAGE CONTROL

> https://packagecontrol.io

`import urllib.request,os,hashlib; h = '7183a2d3e96f11eeadd761d777e62404' + 'e330c659d4bb41d3bdf022e94cab3cd0'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)`

## SUBLIME PACKAGES

- AngularJS
- ApplySyntax
- Babel
- BracketHighlighter
- DocBlokr
- Gutter Color
- JavaScript Snippets
- JSCS-Formatter
- JSHint Gutter
- LESS
- Modific
- Oceanic Next Color Scheme
- Schemr
- Seti_UI
- SideBarEnhancements
- TabsExtra
- Themr
- Vanilla Lodash Snippets
- WordHilight

## SUBLIME USER SETTINGS

```
{
	"Seti_ClosedFolder_same": true,
	"Seti_orange_button": true,
	"Seti_panel_nrml": true,
	"bold_folder_labels": false,
	"caret_extra_bottom": 3,
	"caret_extra_top": 3,
	"caret_extra_width": 4,
	"color_scheme": "Packages/Gutter Color/Oceanic Next.gcfix.tmTheme",
	"ensure_newline_at_eof_on_save": true,
	"font_face": "Source Code Pro Light",
	"font_size": 13,
	"highlight_line": true,
	"highlight_modified_tab": true,
	"ignored_packages":
	[
		"Vintage"
	],
	"line_padding_bottom": 3,
	"line_padding_top": 3,
	"overlay_scroll_bars": true,
	"show_tab_close_buttons": true,
	"tab_size": 4,
	"theme": "Seti.sublime-theme",
	"translate_tabs_to_spaces": true,
	"trim_trailing_white_space_on_save": true,
	"word_separators": "./\\()\"'-:;,.;<>~!@#%^&*|+=[]{}`~?"
}
```

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

## OTHER INSTALLS (unavailable with brew)

1. `Memory Clean` (set `Auto Clean = true`)

## RESOURCES

* https://github.com/drduh/OS-X-Security-and-Privacy-Guide
