# A collection of Homebrew formulae

## Contents

* `dar` - custom formula for the [Disk ARchive tool](https://dar.linux.free.fr).
  This formula adds a `--without-upx` build option, making it possible too
  install dar on Big Sur in spite of the current bug [UPX compressed application fails to start on latest macOS release: Big Sur 11.01](https://github.com/upx/upx/issues/424).
  As a result `upx` and `dar` are part of the [Top Big Sur bottling issues](https://github.com/Homebrew/homebrew-core/issues/65000).

## How do I install these formulae?
    $ brew tap gonewest818/tap
    $ brew install gonewest818/tap/dar --build-from-source --without-upx

## Documentation
`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).
