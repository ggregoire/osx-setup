# UPDATE

Software update...

# SYSTEM PREFERENCES

1. Trackpad > check "tap to click"
2. Trackpad > uncheck "Scroll direction natural"
3. Mission Control > uncheck "Show dashboard as a space"
4. Dock > check "Automatically hide and show the Dock"

# HOMEBREW

1. `ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"`
2. `launchctl setenv PATH "/usr/local/bin:$PATH"`

# HOMEBREW INSTALLS

1. `brew install zsh`
2. `brew install git`
3. `brew install node`
4. `brew install unfs3`

# HOMEBREW CASK

1. `brew install caskroom/cask/brew-cask`
2. `brew tap caskroom/versions`

# HOMEBREW CASK INSTALLS

__dev__

1. `brew cask install google-chrome`
2. `brew cask install iterm2`
3. `brew cask install sublime-text3`
4. `brew cask install github`
5. `brew cask install filezilla`
6. `brew cask install dash`
7. `brew cask install java7`
8. `brew cask install virtualbox`
9. `brew cask install vagrant`

__media__

10. `brew cask install utorrent`
11. `brew cask install vlc`

__tools__

12. `brew cask install appcleaner`
13. `brew cask install spectacle`
14. `brew cask install bettertouchtool` <small>(Preferences > Finder > Two Finger Swift Left/Right : 3F Swipe Left/Right)</small>
23. `brew cask install day-o` <small>(Preferences > Date & Time format > HH:mm)</small>

__system__

15. `brew cask install qlcolorcode`
16. `brew cask install qlstephen`
17. `brew cask install qlmarkdown`
18. `brew cask install quicklook-json`
19. `brew cask install qlprettypatch`
20. `brew cask install quicklook-csv`
21. `brew cask install betterzipql`
22. `brew cask install webp-quicklook`

# NPM INSTALLS

1. `npm install -g pure-prompt` (follow the setup on GitHub)
2. `npm install -g bower`
3. `npm install -g gulp`
4. `npm install -g grunt grunt-cli`
5. `npm install -g protractor`

# GIT SETUP

1. `git config -g core.precomposeunicode true`
2. `git config -g user.name "Guillaume Grégoire"`
3. `git config -g user.email "guillaume.gregoire.89@gmail.com"`
4. `git config -g credential.helper osxkeychain`

# OH MY ZSH

1. `curl -L http://install.ohmyz.sh | sh`
2. ~/.zshrc > `export PATH="/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin"`
3. ~/.zshrc > `plugins=(git osx brew brew-cask npm bower zsh-syntax-highlighting)`

# ITERM2 PREFERENCES

1. Profiles > New profile
2. Profiles > Colors > Load Presets > Import > [base16-default.dark.itermcolors](https://github.com/chriskempson/base16-iterm2)
3. Profiles > Text > [Droid sans mono](http://www.fontsquirrel.com/fonts/droid-sans-mono) 13pt
4. Profiles > Window > Transparency + Columns 130 + Rows 30

# SUBLIME PACKAGE CONTROL

`import urllib.request,os,hashlib; h = '7183a2d3e96f11eeadd761d777e62404' + 'e330c659d4bb41d3bdf022e94cab3cd0'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); urllib.request.install_opener( urllib.request.build_opener( urllib.request.ProxyHandler()) ); by = urllib.request.urlopen( 'http://sublime.wbond.net/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); print('Error validating download (got %s instead of %s), please try manual install' % (dh, h)) if dh != h else open(os.path.join( ipp, pf), 'wb' ).write(by)`

# SUBLIME PACKAGES

- SideBarEnhancements
- Alignment
- DocBlokr
- JavaScriptNext
- Theme Soda
- Base16

# DESKTOP BACKGROUND

Finder > Go to `/Library/Screen Savers/Default Collections/1-National Geographic/NatGeo04.jpg` > Set desktop picture

