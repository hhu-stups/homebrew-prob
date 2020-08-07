# Homebrew ProB

[Homebrew](http://brew.sh) tap to install the [ProB](https://www3.hhu.de/stups/prob/index.php/Main_Page) model checker and animator.

This tap provides a formula to install the latests release or nightly build of ProB. 

Installing either version will provide two commands to run the GUI or the command-line versions of ProB.

* `prob-tk`
* `probcli`

## Installation

To install the latest **release** run:

```
brew install hhu-stups/prob/prob
```

To install the current **nightly build** run:

```
brew install hhu-stups/prob/prob --head
```

## Updating Formula

To update the `prob` formula after a new release you have to update the following fields in `prob.rb`:

  * **url** The URL of the build.
  * **version** the version string of the latest release.
  * **sha256** The checksum of the build (Use: `shasum -a 256 <path-to-build.tar.gz>` to compute).

## License

See [LICENSE](LICENSE.md)
