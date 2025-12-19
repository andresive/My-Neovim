# My Neovim 
this is my plugins and cofiguration for programing in csharp and edit text or everything files with neovim,
this file contain the basic for you install my config and plugins. I hope you like it.
If you find errors or bugs try correct these and send a pull request. And thanks 

## Dependencies

- operating system: any linux distro

>Im not try this config on windows but if you try good luck 

- NeoVim version: 0.10.0+

>Most plugins depend of this neovim version not recomend you Download on old version

- Plugin Manager: [Packer.nvim](https://github.com/wbthomason/packer.nvim "Link for Packer Github")

>Follow the install instructions on github repository to install the plugin manager.
>Github link above

## install instructions

Before you downloaded neovim with correct version and downloaded the plugin manager 

1. Go to your nvim directory normally the default path is ~/.config/nvim

`cd ~/.config/nvim`

>If the directory is not created you can create these on manual way with command below
>Before you verify that directory is created 

`mkdir ~/.config/nvim`

2. Clone my project with this command:

`git clone https://github.com/andresive/My-Neovim.git ~/.config/nvim`

3. Open your neovim and run command `:Packer Install`

4. Im recomended you run nvim command `:Packer Compile`

5. Run the nvim command `:Packer Sync` to update plugins 

And enjoy my config thanks for Install MyNeovim

### Note
If you tested my project on Windows and these is not work, you can run it on WSL (Windows Subsystem linux)
im tested, but this is unstable on some windows like from the telescope plugin, this not turn unusable. 
If this happens to you clear the terminal and open nvim again, these bug ocurred normally when you use mouse 
with Telescope windows opened.
