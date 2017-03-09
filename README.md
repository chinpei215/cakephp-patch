# Unofficial Patches for CakePHP

This repository provide important bug fixes for legacy versions of CakePHP unofficially.

- Fix nested transactions may be rolled back or committed unexpectedly [#10353](https://github.com/cakephp/cakephp/pull/10353)

All patches are tested with the latest release of each minor version. If you are not using those release, you **may** have to upgrade your application before applying patches.

## Usage

Pick a patch you want to apply, put it into your APP directory, and run `patch` command in the following way:
```sh
patch -d vendor/cakephp/cakephp -p1 -t < 10353.patch
```

Also, you can revert the change anytime if you want:
```sh
patch -d vendor/cakephp/cakephp -p1 -t -R < 10353.patch
```

### Windows

Since Windows doesn't provide `patch.exe` by default, you would get an error if you run the command above.
You may have to install [MinGW](http://www.mingw.org/) or [Bash/WSL](https://msdn.microsoft.com/ja-jp/commandline/wsl/about) in advance.

## License

Licensed under MIT.
All patches are provided by [Kurita Takashi](https://github.com/chinpei215) unofficially.
The code snippets are copyrighted by [Cake Software Foundation](https://cakefoundation.org).
