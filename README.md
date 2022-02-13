# A collection of Homebrew formulae

## Formulae

* `dar` - custom formula for the [Disk ARchive tool](https://dar.linux.free.fr).
  This formula adds a `--without-upx` build option, making it possible too
  install dar on Big Sur in spite of the current bug [UPX compressed application fails to start on latest macOS release: Big Sur 11.01](https://github.com/upx/upx/issues/424).
  As a result `upx` and `dar` are part of the [Top Big Sur bottling issues](https://github.com/Homebrew/homebrew-core/issues/65000).

## Casks

* `gonewest818-handbrakecli` - custom cask installing HandBrakeCLI from the project's official GitHub releases page.

## How do I install?
    $ brew tap gonewest818/tap
    $ brew install gonewest818/tap/dar --build-from-source --without-upx
    $ brew install gonewest818/tap/gonewest818-handbrakecli

## Documentation
`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
