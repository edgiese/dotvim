# Thoughts
I love vim because it is FAST, lightweight, powerful, works in the commandline, and is mostly OS independent. That being said, some of the default settings are no good, and there is a lot of missing functionality.  I have developed a set of customizations to vim that fix these problems.  In order to sync these changes across computers using various operating systems some additional complexity must be added in the installation process.

Everyone has their own tastes, and will probably want to customize their setup further, so my vimrc is just a starting point.  I hope that you will be able to clone my repository and then make your own from there.

Please let me know if you get stuck in the install process (make a github issue) and I will try to help out.

# Install instructions on Linux/Mac

Summary:

	git clone git://github.com/edgiese/dotvim.git ~/.vim
	ln -s ~/.vim/vimrc ~/.vimrc
	sudo apt-get install ctags
	vim
	:BundleInstall


### 1. Downlod the repository into your .vim folder

	git clone git://github.com/edgiese/dotvim.git ~/.vim


### 2. Create a symbolic link to your vimrc

	ln -s ~/.vim/vimrc ~/.vimrc
	
You may wonder why not just copy vimrc up a directory and name it .vimrc?  By moving it up a directory we would take it out of the repository, and would no longer be able to track changes.

Note that I don't use a gvimrc file, instead I use an if statement in my vimrc that allows me to run gui stuff when appropriate, this keeps all my settings in a single file.

### 3. Update a directory in the vimrc
You need to update a single directory in your vimrc (the line is towards the top of the file)


### 4. Run BundleInstall
You should already have vundle installed, go into vim and type:

    :BundleInstall

If you setup Vundle correctly, this will now download all the plugins!

### 5. Plugin Dependencies

Ctags is a program that parses your code and generates links between files.  Ctags is used by a few plugins that I have, and they will complain if you don't have them installed.  You can remove the plugins, but I reccomend trying to install ctags.  It is super useful.  You can read about it [here](http://ctags.sourceforge.net/)

    sudo get-apt install ctags



If any of the plugins give you trouble, you can comment them out in your vimrc.

# Installation on Windows


Note these install instructions assume that your vim directory is in: C:\opt\vim, modify as necessary.

### 1. Downlod the repository into your .vim folder

	git clone git://github.com/johndgiese/dotvim.git C:\opt\vim\.vim

### 2. Create symbolic links

Create a symbolic link: vimfiles <==> .vim

    mklink /D _vimfiles .vim

Create a symbolic link: .vim/vimrc <==> _vimrc

    mklink .vimrc .vim/vimrc

You may wonder why not just rename .vim vimfiles?  Well, by keeping it named .vim and linking to it, the repository will work also on linux and mac.  You may also wonder why not just copy vimrc up a directory and name it _vimrc?  Well, by moving it up a directory we would take it out of the repository, and would no longer be able to track changes.

Note that I don't use a gvimrc file, instead I use an if statement in my vimrc that allows me to run gui stuff when appropriate, this keeps all my settings in a single file.

### 3. Update a directory in the vimrc
You need to update a single directory in your vimrc (the line is towards the top of the file)

### 4. Add any necessary dependencies for plugins, or comment them out in the vimrc
If you want to use powerline with fancy fonts, you will need to install a patched font.  I have my favorite stored in the windows directoy.  You can double click on each of them to install the fonts.  Read about this feature [here](http://enegue.com/consolas-font-in-vim-powerline-windows/).

A few plugins use ctags.  You can install it online, or for convenience go to the .vim/windows directory and get it there.  You will need to place it on the $PATH, you can do this as follows:

	setx PATH "%PATH%;C:\opt\vim\.vim\windows" -M

(Note: if you only want to add it to the current user's path, omit the -M)

If you want to use the vipy plugin you will need to install ipython and pyzmq, and finally run another batch script, as described in the install instructions [here](https://github.com/johndgiese/vipy)

If any of the plugins give you trouble, you can comment them out in your vimrc.

### 5. Run BundleInstall
You will need to get [Vundle for Windows](https://github.com/gmarik/vundle/wiki/Vundle-for-Windows), note that the vundle files are already in bundle so you can skip that step.

Go into vim and type:

    :BundleInstall

If you setup Vundle correctly, this will now download all the plugins!


# How this vim setup differs from normal vim

The most important three changes are:

* ESC in insert mode is now jk (quickly, one after another)
* Swaps the semicolon and colon, because you use colon a lot and almost never use semicolon
* ,v opens the vimrc (which auto runs upon saving)

These three shorcuts will save you a lot of time, and keep your hands more comfortable when typing.  I believe one of the main benefits of vim is that it allows you to keep your hands on the keyboard so you can type more faster.

* F1 opens nerdtree
* F2 opens the ctag viewer (SHIFT-F2 opens an alternate viewer)
* F3 is the mini-buffer explorer
* F4 opens the gundo plugin
* The new leader key is , instead of /
* Searches (pressing / or ? in normal mode) now have \v prepended so that vim uses the verymagic mode (i.e. it uses normal python/perl regular expressions instead of its own version)
* ,/ clears search highlighting
* ,s (i.e. ,s) starts spell search
* Much better colorscheme
* ,o opens the colorscheme file for easy updating if you use different languages
* ,g will do a google search on the current selection
* ,w will highlight whitespace at the ends of lines, and ,W will delete it.
* F11 will maximize the window (only on windows)
* Autocomplete uses TAB unless there is white space before the cursor
* Tabs are replaced with four spaces
* CTRL-P opens the super awesome fuzzy file browser (:h ctrlp for details)

The following other plugins are installed:
* Pathogen - lets you manage plugins more easily (look in the bundle directory)
* Nerdtree - browse files inside vim
* Tagbar/Taglist - view the structure of your files using ctags
* Gundo - graphical view of undo branches; see the [vimcast](http://vimcasts.org/episodes/undo-branching-and-gundo-vim/)
* Fugitive - use git inside vim!  See the [vimcasts](http://vimcasts.org/episodes/archive) about it.
* Surround - work better with parenthesis and other nesting structures.  Type :h surround
* Vipy - use ipython inside vim!  python code completion, etc. see [the repo](https://github.com/johndgiese/vipy/blob/master/README.md)
* Autoclose - autoclose parenthesis
* Snipmate - add snippets of commonly usedcode
* Session - save the window structure and files opened, for easy switching between projects
* Unimpaired
* Powerline - a colorful and useful statusline
* Csscolor - css color highlighting
* Tabular - for aligning stuff (see [this vimcast](http://vimcasts.org/episodes/aligning-text-with-tabular-vim/))
* Supertab - tab autocompletion
* CTRLp - lets you browse files really quickly
* ... a few other little ones

F5 is my universal "run file" key, and "SHIFT-F5" is my debug file key.  These are loose terms.  Here is a list of files and what F5 does for each of them.
* python -- F5 runs file (in vipy plugin)
* xml -- S-F5 formats using xmllint
* html -- F5 opens in a browser

# Maintaining your repo
The structure of this vimrc setup allows easy cross platform use and easy updating of your plugins.  This comes at a cost of it being a little more complicated to maintain (but overall much faster and stable).  Here are a few notes that may help you.

### Commiting changes
If you modify your vimrc file you will likely want to commit these changes to your repository.  Do this like you would for any git repository:

	git add .
	git commit -m "brief description of changes"

finally, if you are hosting your vim setup online you would push to the remote repository:

	git push origin master
	
Note that you may need to update the origin url for the repo (google online if you don't know how to do this)

### Managing plugins
I use Vundle to manage plugins; it is much better than the default way.  Google online if you don't believe me.  Instructions on how to use it [here](https://github.com/gmarik/vundle).

### Updating the VIMRC
You can quickly update the vimrc by pressing ,v in normal mode.  When you save it, it will source the changes so that you can see the effects immediatly.  Note that this doesn't always work as expected, so you may have to fully reset vim to use this.

### Updating the Colorscheme
Everyone likes a different colorscheme, so you will probably want to make some updates to mine or change it completely.  To do this you can use type ,o to go staright to the file to start editing.  When in the file you can type ,h to see all the hex colors (only available in gvim).

If you want to change the name of the colorscheme, you will have to go into your vimrc file and change the name in two places: one for actually loading the colorscheme, and one for enabling the ,o shortcut.

See [this vimcast](http://vimcasts.org/episodes/creating-colorschemes-for-vim/) for details about colorschemes.
