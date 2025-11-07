# VimConfig
This is my configuration for VIM text editor.

<h2>1. What is Vim?</h2>

Vim text editor is a highly efficient and ubiquitous tool, particularly popular among programmers, system administrators, and anyone who spends a significant amount of time working with text files in a command-line environment. 

Vim is distinguished by several core features that contribute to its power and steep learning curve:

 - Modal Editing: This is Vim's most defining characteristic. Unlike most modern editors, Vim operates in different modes (like Normal, Insert, Visual, and Command-line). This allows a user to perform complex editing tasks using a minimal number of keystrokes without taking their hands off the home row of the keyboard.

 - Efficiency and Speed: Once mastered, Vim allows for incredibly fast text manipulation. It's designed to minimize the use of the mouse and maximize keyboard efficiency, making editing feel like navigating and manipulating text with a distinct language of commands and movements.

 - Ubiquity: Vim is often pre-installed on virtually all UNIX and Linux systems, making it a reliable, available tool for remote editing and system configuration, even on minimal installations.

 - Extensibility: Vim is highly customizable and extensible through its configuration file (.vimrc) and a vast ecosystem of plugins. This allows users to tailor the editor to their specific needs, from basic text editing to a full-fledged Integrated Development Environment (IDE) experience.

<h2>2. Requirements</h2>

The configuration requires three important tools:
 - NodeJS
 - Git
 - Python

We can easily download those from the Internet.

<h2>3. Step by step guide</h2>

**Note:** the implementing process will be done all in Git.

Follow below steps:

1. Create **vimrc**

```bash
vim ~/.vimrc
```

Adding below text into that file:

```bash
if filereadable(expand("~/.vimrc.plug"))
	source ~/.vimrc.plug
endif
```

Then exit this file by using command **:wq** in Command mode.

2. Create **vim.plug**

```bash
touch ~/.vimrc.plug
```

```bash
mkdir -p .vim/plug
```
3. Configurate **vimrc.plug** to get PlugIn

```bash
vim .vimrc.plug
```
Then, adding below text into that file

```bash
let g:plug_home = '~/vimfiles/plugged'

call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-fugitive' "A plugin for Git in VIM
call plug#end()
```

4. Finish installation

```bash
curl -flo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

After that, using command **:PlugInstall** in Vim, the editor will automatically download PlugIns in **vimrc.plug**.

