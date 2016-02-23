# HomeBrew ProB

[Homebrew](http://brew.sh) tap to install the [ProB](https://www3.hhu.de/stups/prob/index.php/Main_Page) model checker and animator.

This tap provides two formulae (`prob` and `prob-nightlu`) to either install the latests release or nightly build of ProB. 

Installing either formula will provide two commands to run the GUI or the command-line versions of ProB.

* `prob-tk`
* `probcli`

## Installation

To install the latest **release** run:

```
brew install hhu-stups/prob/prob
```

To install the current **nightly build** run:

```
brew install hhu-stups/prob/prob-nightly
```


To **update** the nightly build just run the usual Homebrew update process.

```
brew update
brew upgrade prob-nightly
```


## License

See [LICENSE](LICENSE.md)
