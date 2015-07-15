# Xcode Snippets

Just a few code snippets I have in my Xcode arsenal. In [dotfiles](http://dotfiles.org/) fashion, I thought it'd be cool to put these out in the ether.

## Using Snippets

In Xcode 4, open a workspace and toggle the right sidebar to be visible. On the bottom, there is a panel with four icons in the header. Click on the `{ }` icon to open the Code Snippets Library.

Now copy-paste the code from one of these snippets, highlight the code block you just pasted and drag it to the Code Snippet panel. Make sure to match the suggested platform, language, and completion scope. The completion shortcut corresponds to the filename of the code snippet.

## Installing all Snippets

To get started, install the xcodesnippet gem.

```
$ gem install xcodesnippet
```

Once installed, navigate to the directory where the snippets repository has been cloned and run

```
for f in *.m; do xcodesnippet install $f;  done
```

This will batch process all of the snippets available in the repository and add them to Xcode.

