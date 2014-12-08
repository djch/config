# Config

**Config** is a basic checklist I follow to set up a new Mac's development environment. It gets me up to speed with Git, Ruby, GitHub, Jekyll, and more so I can more quickly get back to coding.

It was [Mark Otto's idea](https://github.com/mdo/config), originally.

## Contents

| File | Description |
| --- | --- |
| `.bash-profile` | Customizes the Terminal.app prompt and echos the currently checked out Git branch. |
| `.gitconfig` | Global Git configuration to specify my name and email, shortcuts, colors, and more. |
| `.gitignore` | A genericish ignore file adapted from [twbs/bootstrap](https://github.com/twbs/bootstrap)'s. |
| `Preferences.sublime-settings` | My Sublime Text 2 user preferences. |

## Checklist

### 1. Prep OS X

- Download and install latest version of Xcode from the Mac App Store
- Download and install Xcode command line tools

### 2. Download dependencies

- Install [rbenv](https://github.com/sstephenson/rbenv)
- Install [a Ruby version](https://github.com/sstephenson/rbenv#installing-ruby-versions) (last one I used was `1.9.3-p551`)
  - Set a [global Ruby version](https://github.com/sstephenson/rbenv#rbenv-global)
- Install common gems: `$ gem install sass jekyll rouge`
- Download and run the [Node.js Mac installer](http://nodejs.org/download/)

### 3. Secure Git(Hub) access

- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when 2FA is enabled

### 4. Prep Terminal.app

- Load [`.bash_profile`](/master/.bash_profile)
- Load [`.gitconfig`](/master/.gitconfig) contents into the global `~/.gitconfig`
- Tweak colour scheme

### 5. Tweak Sublime Text 2 just right

- Install Package Control:
  - Open Sublime Text 2 and hit `Ctrl-\``, then enter the following:
```bash
import urllib2,os,hashlib; h = '7183a2d3e96f11eeadd761d777e62404' + 'e330c659d4bb41d3bdf022e94cab3cd0'; pf = 'Package Control.sublime-package'; ipp = sublime.installed_packages_path(); os.makedirs( ipp ) if not os.path.exists(ipp) else None; urllib2.install_opener( urllib2.build_opener( urllib2.ProxyHandler()) ); by = urllib2.urlopen( 'http://packagecontrol.io/' + pf.replace(' ', '%20')).read(); dh = hashlib.sha256(by).hexdigest(); open( os.path.join( ipp, pf), 'wb' ).write(by) if dh == h else None; print('Error validating download (got %s instead of %s), please try manual install' % (dh, h) if dh != h else 'Please restart Sublime Text to finish installation')
```
- Install and load packages (`Cmd-Shift-P`):
  - [Spacegray theme](http://kkga.github.io/spacegray/)
  - [Sass](http://sass-lang.com) package
- Load user settings from [`Preferences.sublime-settings`](/master/Preferences.sublime-settings)

## Use it yourself

If you fork this repo or just copy-paste things you need **please be sure to change your `.gitconfig` name and email address!**
