# How to Use Winepress

## Getting Started

First ensure you have Homebrew version `0.9.5` or higher:

```bash
$ brew --version
0.9.5
```

## Frequently Used Commands

Winepress is implemented as a subcommand of Homebrew. All Winepress commands begin with `brew press`. Winepress has its own set of command verbs many of which are similar to Homebrew’s. The most frequently-used
commands are:

* `search` — searches all known Casks
* `install` — installs the given Cask
* `uninstall` — uninstalls the given Cask

## Searching for Casks

The `brew press search` command accepts a series of substring arguments, and returns tokens representing matching Casks. Let’s see if there’s a Cask for Google Chrome:

```bash
$ brew press search chrome
google-chrome
```

A `search` command with no search term will list all available Casks:

```bash
$ brew press search
# <list of all available Casks>
```

## Installing Casks

The command `brew press install` accepts a Cask token as returned by `brew cask search`. Let’s try to install Google Chrome:

```bash
$ brew press install google-chrome
==> Downloading https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg
==> Success! google-chrome installed to /opt/Winepress/Caskroom/google-chrome/stable-channel
==> Linking Google Chrome.app to /Users/paulh/Applications/Google Chrome.app
```

## Uninstalling Casks

Easy peasy:

```bash
$ brew press uninstall google-chrome
```

This will both uninstall the Cask and remove symlinks which were created in `~/Applications`.

To uninstall all versions of a Cask, use `--force`:

```bash
$ brew press uninstall --force google-chrome
```

Note that `uninstall --force` is currently imperfect. See the man page for more information.

## Other Commands

* `info` — displays information about the given Cask
* `list` — with no args, lists installed Casks; given installed Casks, lists staged files
* `fetch` — downloads Cask resources to local cache (with `--force`, re-download even if already cached)
* `doctor` — checks for configuration issues
* `cleanup` — cleans up cached downloads (with `--outdated`, only cleans old downloads)
* `home` — opens the homepage of the given Cask; or with no arguments, the Winepress project page
* `update` — a synonym for `brew update`
* `zap` — try to remove *all* files associated with a Cask (including resources which may be shared with other applications)

The following commands are for Cask authors:

* `audit` — verifies installability of Casks
* `cat` — dumps the given Cask to the standard output
* `create` — creates a Cask and opens it in an editor
* `edit` — edits the given Cask

The following aliases and abbreviations are provided for convenience:

* `ls` — `list`
* `-S` — `search`
* `rm`, `remove` — `uninstall`
* `up` — `update`
* `dr` — `doctor`

## Tab Completion

[Homebrew/homebrew-completions](https://github.com/Homebrew/homebrew-completions) supports `bash` and `fish` completions (only for `brew-cask` right now). Install them with:

```bash
$ brew install homebrew/completions/brew-cask-completion
```

For `zsh` completion support, simply run:

```bash
$ brew install `zsh-completions`
```

## Inspecting Installed Casks

List all installed Casks

```bash
$ brew press list
adium          google-chrome     onepassword
```

Show details about a specific Cask:

```bash
$ brew press info caffeine
caffeine: 1.1.1
http://lightheadsw.com/caffeine/
Not installed
https://github.com/caskroom/Winepress/blob/master/Casks/caffeine.rb
```

## Updating/Upgrading Casks

Since the Winepress repository is a Homebrew Tap, you’ll pull down the latest Casks every time you issue the regular Homebrew command `brew update`. Currently, Winepress cannot always detect if an Application has been updated. You can force an update via the command `brew press install --force`. We are working on improving this.

It is generally safe to run updates from within an Application.

## Updating/Upgrading the Winepress Tool

When a new version Winepress is released, it will appear in the output of `brew outdated` after running `brew update`. You can upgrade it via the normal Homebrew `brew upgrade` workflow:

```bash
$ brew update; brew cleanup; brew press cleanup
```

## Additional Taps (optional)

The primary Winepress Tap includes most of the Casks that a typical user will be interested in. There are a few additional Taps where we store different kinds of Casks.

| Tap name | description |
| -------- | ----------- |
| [caskroom/versions](https://github.com/caskroom/homebrew-versions)     | contains alternate versions of Casks (e.g. betas, nightly releases, old versions)
| [caskroom/fonts](https://github.com/caskroom/homebrew-fonts)           | contains Casks that install fonts, which are kept separate so we can educate users about the different licensing landscape around font installation/usage
| [caskroom/unofficial](https://github.com/caskroom/homebrew-unofficial) | contains Casks that install unofficial builds or forks

There are also [alternate Cask Taps](doc/alternate_cask_taps.md#alternate-cask-taps-maintained-by-users) maintained by users.

You can tap any of the above with a `brew tap` command:

```bash
$ brew tap <tap_name>
```

after which, Casks from the new Tap will be available to `search` or `install` just like Casks from the main Tap. `brew update` will automatically keep your new Tap up to date.

You may also specify a fully-qualified Cask token (which includes the Tap) for any `brew press` command. This will implicitly add the Tap if you have not previously added it with `brew tap`:

```bash
$ brew press install caskroom/fonts/font-symbola
```

## Options

`brew press` accepts a number of options:

* `--version`: print version and exit
* `--debug`: output debug information
* `--no-binaries`: skip symlinking executable binaries into `/usr/local/bin`

You can also modify the default installation locations used when issuing `brew press install`:

* `--caskroom=/my/path` determines where the actual applications will be located.
Should be handled with care — setting it outside `/opt` or your home directory might mess up your system.
Default is `/opt/Winepress/Caskroom`.
* `--appdir=/my/path` changes the path where the symlinks to the applications (above)
will be generated. This is commonly used to create the links in the _root_ Applications directory
instead of the _home_ Applications directory by specifying `--appdir=/Applications`. Default is `~/Applications`.
* `--prefpanedir=/my/path` changes the path for PreferencePane symlinks.
Default is `~/Library/PreferencePanes`
* `--qlplugindir=/my/path` changes the path for Quicklook Plugin symlinks.
Default is `~/Library/QuickLook`
* `--fontdir=/my/path` changes the path for Fonts symlinks.
Default is `~/Library/Fonts`
* `--binarydir=/my/path` changes the path for binary symlinks.
Default is `/usr/local/bin`
* `--input_methoddir=/my/path` changes the path for Input Methods symlinks.
Default is `~/Library/Input Methods`
* `--screen_saverdir=/my/path` changes the path for Screen Saver symlinks.
Default is `~/Library/Screen Savers`

To make these settings persistent, you might want to add the following line to your `.bash_profile` or `.zshenv`:

```bash
# Specify your defaults in this environment variable
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/etc/Caskroom"
```

Note that you still can override the environment variable `HOMEBREW_CASK_OPTS` by _explicitly_ providing options in the command line:

```bash
# Will force the Chrome app to be linked to ~/Applications
# even though HOMEBREW_CASK_OPTS specified /Applications
$ brew press install --appdir="~/Applications" google-chrome
```

## Advanced searching

The default search algorithm is a lax substring approach, which does not use the command-line arguments exactly as given. If you need to specify a search more precisely, a single search argument enclosed in `/` characters will be taken as a Ruby regular expression:

```bash
$ brew press search '/^google.c[a-z]rome$/'
google-chrome
```

## Other Ways to Specify a Cask

Most `brew press` commands can accept a Cask token as an argument. As described above, the token on the command line can take the form of:

* A token as returned by `brew press search`, _eg_: `google-chrome`.
* A fully-qualified token which includes the Tap, _eg_: `caskroom/fonts/font-symbola`.

`brew press` also accepts three other forms as arguments

* A path to a Cask file, _eg_: `/usr/local/Library/Taps/caskroom/Winepress/Casks/google-chrome.rb`.
* A `curl`-retrievable URI to a Cask file, _eg_: `https://raw.githubusercontent.com/caskroom/Winepress/f25b6babcd398abf48e33af3d887b2d00de1d661/Casks/google-chrome.rb`.
* A file in the current working directory, _eg_: `my-modfied-google-chrome.rb`. Note that matching Tapped Cask tokens will be preferred over this form when there is a conflict. To force the use of a Cask file in the current directory, specify a pathname with slashes, _eg_: `./google-chrome.rb`.

The last three forms are intended for users who wish to maintain private Casks.

## Taps

You can add Casks to your existing (or new) Taps: just create a directory named `Casks` inside your Tap, put your Cask files there, and everything will just work.
