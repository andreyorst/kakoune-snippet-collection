# Kakoune Snippets Collection
This repository  contains snippets  for various  languages.  Those  snippets are
designed to work with [occivink/kakoune-snippets][1] plugin.

## Installation

### With [plug.kak][3]
You     need     to     install     both     `occivink/kakoune-snippets`     and
`andreyorst/kakoune-snippet-collection` plugins and the former, so it could know
where to get snippets, by defining a  path to this plugin's snippet directory in
the `snippet_directories` option.

Overall configuration can look like this:

``` kak
plug "occivink/kakoune-snippets" config %{
    set-option -add global snippets_directories "%opt{plug_install_dir}/kakoune-snippet-collection/snippets"
    # some other kakoune-snippets related configurations
}

plug "andreyorst/kakoune-snippet-collection"
```

### Without plugin manager
You  still  need  to  install `kakoune-snippets`  plugin  by  Occivink.   Follow
installation  instructions   in  [official  repository][2].   Then   clone  this
repository where  you want  it to,  and either  symlink `snippets`  directory to
Kakoune  configuration directory,  or modify  `snippet_directories` variable  to
contain path to it.

## Contributing
Feel free to submit  snippets for your favorite language. The  main goal of this
repository is to  build comprehend collection of snippets, for  vast majority of
languages  that  Kakoune supports.  If  you  think  that  some snippets  can  be
improved, feel free to open Issue, E-mail me, or send pull request with modified
snippet.

### Adding new snippets
If snippets for given language aren't presented in this repository, and you want
to contribute your snippets, to make them available for others, feel free to add
them to the `snippets` directory, by following this simple set of rules:

- Share snippets between languages if possible:
  If snippets can be shared between several languages consider putting those in
  a folder named `(filetype1|filetype2|...|filetypeN)`. Otherwise name folder to
  `filetype`.
- Consider using proper descriptions in filenames:
  - `|} - some weird snippet` is a bad description.
  - `|} - Closure, anonymous function (block)` is fine.
- Use meaningful default text for placeholders:
  People who will expand your snippets for the first time should understand what
  snippet wants from them to insert.

[1]: https://github.com/occivink/kakoune-snippets
[2]: https://github.com/occivink/kakoune-snippets#setup
[3]: https://github.com/andreyorst/plug.kak
