# docker-pandoc-eisvogel-ja

Pandoc docker image with [eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template) template for Japanese.
This repository is forked from [frozenbonito/docker-pandoc-eisvogel-ja](https://github.com/frozenbonito/docker-pandoc-eisvogel-ja).

## Usage

### Basic Usage

```console
$ docker run --rm -v $(pwd):/data hatyuki/pandoc-eisvogel-ja \
    -o doc.pdf \
    doc.md
```

### Fonts

The following Japanese fonts are supported.

- haranoaji (default)
- ipa
- ipaex

It can be specified with a `luatexjapresetoptions` variable.

```console
$ docker run --rm -v $(pwd):/data hatyuki/pandoc-eisvogel-ja \
    -V luatexjapresetoptions=ipaex \
    -o doc.pdf \
    doc.md
```

## Examples

See [examples](./examples) directory.

## version mappings

The table below maps some of the previous image tags and [pandoc]() and [eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template) versions.

| Tags           | `pandoc` version | `eisvogel` version |
|----------------|------------------|--------------------|
| 0.1.0 (latest) | 2.14             | 2.0.0              |
