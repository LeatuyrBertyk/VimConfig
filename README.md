# VimConfig
This is my configuration to make Vim text editor as an IDE.

<h2>1. What is Vim?</h2>

Vim is simply a lightweight text editor. Unlike VS Code or Sublime Text, its initial interface looks like almost nothing. What makes Vim special is that it boosts your typing speed by using shortcuts that are quite different from the norm. To understand how to use it, you can look up **vimtutor** online.

To make the experience more convenient, Vim supports many plugins, and below is my configuration to turn Vim into an IDE.

![Vim interface](/assets/screenshotVim.png)

<h2>2. Requirements</h2>

The configuration requires:
 - NodeJS
 - Git
 - Python

<h2>3. Step by step guide for Windows users</h2>

The installation will be implemented on Git (terminal Git bash).

1. Install Vim

Download the suitable version of Vim on [Vim Download](https://www.vim.org/download.php).

2. Preparation for configuration

```bash
mkdir -p vim/plug
```

2. Clone project

```bash
git clone https://github.com/LeatuyrBertyk/VimConfig/
```

3. Finish installation

```bash
curl -flo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

In Vim, type ***Esc** to switch to Comman mode, type **:PlugInstall**, the editor will automatically download PlugIns in **vimrc.plug**.

<h2>3. Step by step guide for Linux (Ubuntu) users</h2>

**Note:** this installation is easier and faster.

1. Download Vim

On any terminal on Ubuntu, download Vim by

```bash
sudo apt update && sudo apt upgrade && sudo apt install vim
```

If there appears any requirements for extra libraries, Yes to all. 

2. Clone project

```bash
git clone https://github.com/LeatuyrBertyk/VimConfig/
```

2. Activate Plugins

Open Vim, type **Esc** to switch to Command mode, type **:PlugInstall**, the editor will automatically download PlugIns in **.vimrc.plug**.
