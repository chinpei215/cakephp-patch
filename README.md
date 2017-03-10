# Unofficial Patches for CakePHP

This repository provides important bug fixes for legacy versions of CakePHP unofficially.

- Fix nested transactions may be rolled back or committed unexpectedly [#10353](https://github.com/cakephp/cakephp/pull/10353)

All patches are tested with the latest release of each minor version. If you are not using such a release, you **may** have to upgrade your application before applying patches.

## Usage

Pick a patch you want to apply, put it into your APP directory, and run `patch` command in the following way:
```sh
patch -d vendor/cakephp/cakephp -p1 -t < 10353.patch
```
The output will be the following:
```
patching file src/Database/Connection.php
patching file src/Database/Exception/NestedTransactionRollbackException.php
can't find file to patch at input line 178
Perhaps you used the wrong -p or --strip option?
The text leading up to this was:
--------------------------
|diff --git a/tests/TestCase/Database/ConnectionTest.php b/tests/TestCase/Database/ConnectionTest.php
|index 8a05cd8..978998e 100644
|--- a/tests/TestCase/Database/ConnectionTest.php
|+++ b/tests/TestCase/Database/ConnectionTest.php
--------------------------
No file to patch.  Skipping patch.
3 out of 3 hunks ignored
```
You may have gotten a notice about missing a test, but if the missing file is a test case only, you can ignore it. Normally, you wouldn't have any core test cases in the `vendor/cakephp/cakephp` directory.

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
