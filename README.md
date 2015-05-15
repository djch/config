> :warning: If you fork this repo or just copy-paste things **you need to change your `.gitconfig` name and email address!**

# Config

**Config** is a basic checklist I follow to set up a new Mac's development environment. It gets me up to speed with Git, Ruby, GitHub, Jekyll, and more so I can get back to coding.

This was [Mark Otto's idea](https://github.com/mdo/config), originally.

## Contents

| File | Description |
| --- | --- |
| `.bash-profile` | Customizes the Terminal.app prompt and echoes the checked out Git branch. |
| `.gitconfig` | Global Git config with my name and email, shortcuts, colors, and more. |
| `.gitignore` | A generic ignore file adapted from [twbs/bootstrap](https://github.com/twbs/bootstrap)'s. |
| `.vimrc` | Adds some nice highlighting for authoring commit messages |
| `defaults.sh` | Sets some OS X defaults for System Preferences, Finder, Safari etc. |
| `config.cson` | My Atom editor preferences. |
| `atom-pkgs.cson` | My Atom editor plug-ins and themes. |

## Checklist

### 1. Prep OS X

- Download and install latest version of Xcode from the Mac App Store
- Download and install Xcode command line tools

### 2.Dependencies

- Install [rbenv](https://github.com/sstephenson/rbenv)
- Install [a Ruby version](https://github.com/sstephenson/rbenv#installing-ruby-versions) (last one I used was `1.9.3-p551`)
  - Set a [global Ruby version](https://github.com/sstephenson/rbenv#rbenv-global)
- Install common gems: `$ gem install sass jekyll rouge`
- Download and run the [Node.js Mac installer](http://nodejs.org/download/)

### 3. Git(Hub)

- [Generate new SSH key](https://help.github.com/articles/generating-ssh-keys/)
- [Generate an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/) for Terminal to auth your GitHub account when you've got 2FA enabled.

### 4. Terminal.app

- Load [`.bash_profile`](/.bash_profile)
- Load [`.gitconfig`](/.gitconfig) contents into the global `~/.gitconfig`
- Tweak colour scheme

### 5. Editor

1. Download [Atom](https://atom.io).

2. Install my precious add-ons and themes using the Atom Package Manager CLI.

   ```bash
   apm install --package-file atom-pkgs.txt
   ```
   
3. Copy [config.cson](https://raw.githubusercontent.com/djch/config/master/config.cson) to your user prefs (~/.atom/config.cson).
