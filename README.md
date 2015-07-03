# My personal OSX setup

## Summary

* [Update](#update)
* [System Preferences](#system-preferences)
* [Homebrew](#homebrew)
* [Homebrew Installs](#homebrew-installs)
* [Homebrew Cask](#homebrew-cask)
* [Homebrew Cask Installs](#homebrew-cask-installs)
* [NPM Installs](#npm-installs)
* [Git Setup](#git-setup)
* [Oh My ZSH](#oh-my-zsh)
* [iTerm2 Preferences](#iterm2-preferences)
* [Sublime Package Control](#sublime-package-control)
* [Sublime Packages](#sublime-packages)
* [Desktop Background](#desktop-background)
* [Finder Preferences](#finder-preferences)
* [Other installs (unavailable with brew)](#other-installs-unavailable-with-brew)

## UPDATE

Apple menu > Software update...

## SYSTEM PREFERENCES

1. Trackpad > check "tap to click"
2. Trackpad > uncheck "Scroll direction natural"
3. Mission Control > uncheck "Show dashboard as a space"
4. Dock > check "Automatically hide and show the Dock"

## HOMEBREW

> http://brew.sh

1. `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
2. `launchctl setenv PATH "/usr/local/bin:$PATH"`

## HOMEBREW INSTALLS

1. `brew install zsh`
2. `brew install git`
3. `brew install node`
4. `brew install wget`
5. `brew install mysql`

## HOMEBREW CASK

> http://caskroom.io

1. `brew install caskroom/cask/brew-cask`
2. `brew tap caskroom/versions`

## HOMEBREW CASK INSTALLS

__dev__

1. `brew cask install google-chrome`
2. `brew cask install iterm2`
3. `brew cask install sublime-text3`
4. `brew cask install github`
5. `brew cask install filezilla`
6. `brew cask install java7`
7. `brew cask install virtualbox`
8. `brew cask install tunnelblick`

__media__

1. `brew cask install utorrent`
2. `brew cask install vlc`
3. `brew cask install steam`

__tools__

1. `brew cask install xtrafinder`
2. `brew cask install appcleaner`
3. `brew cask install ccleaner`
5. `brew cask install the-unarchiver`
6. `brew cask install spectacle`
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

1. Profiles > New profile
2. Profiles > Colors > Load Presets > Import > [base16-default.dark.itermcolors](https://github.com/chriskempson/base16-iterm2)
3. Profiles > Text > [Droid sans mono](http://www.fontsquirrel.com/fonts/droid-sans-mono) 13pt
4. Profiles > Window > Transparency + Columns 130 + Rows 30

## SUBLIME PACKAGE CONTROL

> https://packagecontrol.io

`import urllib.request,os,hashlib; h = '7183a2d3e96f11eeadd761d777e62404' + 'e330c659d4bb41d3bdf022e94cab3cd0'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)`

## SUBLIME PACKAGES

- ApplySyntax
- Babel
- BracketHighlighter
- DocBlokr
- FixMyJS
- GitCommitMsg
- JavaScript Snippets
- JSCS-Formatter
- JSHint Gutter
- LESS
- Modific
- Oceanic Next Color Scheme
- PackageResourceViewer
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
	"Seti_ClosedFolder_dots": false,
	"Seti_ClosedFolder_same": true,
	"Seti_SB_big": false,
	"Seti_SB_bright": false,
	"Seti_SB_med": false,
	"Seti_blue_tab_label": false,
	"Seti_in_4_a_treat": true,
	"Seti_no_bar_undertabs": true,
	"Seti_no_blue_bar": true,
	"Seti_orange_button": true,
	"Seti_orange_label": false,
	"Seti_pad_3": false,
	"Seti_pad_5": false,
	"Seti_rainbow": true,
	"Seti_sb_big_padding": false,
	"Seti_sb_blank": false,
	"Seti_sb_small_padding": false,
	"Seti_sb_tree_med": false,
	"Seti_sb_tree_miny": false,
	"Seti_sb_tree_tiny": false,
	"Seti_sb_wild": true,
	"Seti_tabs_small": true,
	"bold_folder_labels": false,
	"caret_extra_bottom": 3,
	"caret_extra_top": 3,
	"caret_extra_width": 4,
	"color_scheme": "Packages/Oceanic Next Color Scheme/Oceanic Next.tmTheme",
	"ensure_newline_at_eof_on_save": true,
	"font_face": "Source Code Pro Light",
	"font_size": 13,
	"highlight_line": true,
	"highlight_modified_tabs": true,
	"ignored_packages":
	[
		"Vintage"
	],
	"index_files": false,
	"line_padding_bottom": 3,
	"line_padding_top": 3,
	"overlay_scroll_bars": "enabled",
	"show_tab_close_buttons": true,
	"tab_size": 4,
	"theme": "Seti_orig.sublime-theme",
	"translate_tabs_to_spaces": true,
	"trim_trailing_white_space_on_save": true,
	"word_separators": "./\\()\"'-:,.;<>~!@#%^&*|+=[]{}`~?"
}
```

## DESKTOP BACKGROUND

Finder > Go to `/Library/Screen Savers/Default Collections/1-National Geographic/NatGeo04.jpg` > Set desktop picture

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
