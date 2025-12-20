# Shortcuts documentations 

here stay description of all shortcuts and key mappings configured on my nvim if you not like these shortcuts you can change it on lua file.
<br>
Im not recomend you modify commands if you want modify the shortcut you change the code within of tags <> and follow the correct sintax for all keys.

## Shotcuts

### Save file:
- Shortcut: ctrl + s
- Description: Writes the modifications made on the file.

### Close Neovim:
- Shortcut: ctrl + x
- Description: Close nvim.
> if you not save the that you edit return a error 

### Copy:
- Shortcut: ctrl + c 
- Description: Copy the selected text.

### Paste:
- Shortcut: ctrl + v
- Description: Paste the copied text on the clipboard.

### Select all
- Shortcut: ctrl + a
- Description: Select all text on the open file

### Revert modifications
- Shortcut: ctrl + z
- Descrption: Revert the modification that you made in file

### Telescope find file
- Shortcut: ctrl + q 
- Description: Open the Telescope window for search files on open directory

### Open nvim Tree
- Shortcut: Ctrl + f 
- Description: Opens the NvinTree windows for browse the files in the open directory

### Open Float terminal
- Shortcut: Ctrl + t
- Description: Opens the float terminal tou you use the OS commands as the git commands

### Telescope file browser
- Shortcut: Alt + f 
- Description: Other file browser but i use these for create or delete files

### Open local list
- Shortcut: Alt + s
-  Description: open local list of the opened file
> the local list normaly contains code errors and warnings but sometimes is show empty

### Render MarkDown
- Shortcut: Ctrl + m
- Description: Toggle Markdown renderer to you see that your markdown file is looking

### Trouble Diagnostics
- Shortcut: Ctrl + e 
- Description: Open the trouble Diagnostics window for show errors and warnings 
> I Prefer these for verify warnings or errors in my code

### Trouble Symbols
- Shortcut: Ctrl + h
- Description: Opens a window with code structure

### Visual mode to insert
- Shortcut: Alt + i
- Description: switching from visual mode to insert mode in nvim

### Insert mode to visual
- Shortcut: Alt + v
- Description: switching from insert mode to visual mode in nvim

## Functions

here all function description on mappings file where stay all shotcuts and key mappings 

### telescopeOpen() fuction
- This function verify if any Telescope window is open if is open return true else return false
- I use this function in other function for verify if Telescope is open

### closeTree() function
- This function verify if NvimTree (file Browser) is open if open close the NvimTree if not open 
close the nvim
- I use this function for close nvim even though NvimTree is open
> if you close nvim without this function you close nvimTree first and after you close nvim

### closeTelescope() function
- This function close Telescope if is opened and else is not opened open the Telescope file 
browser
- I use this fucntion for toggle the telescope file browser

###  localListVerify() function
- This function verify if exists itens on the local list and return true if exits else return false 
- i use this functio for verify if the local list have itens that warnings or errors
> i use this function in other function for verification

### localListToggle() function 
- this function toggle the local list window checking if exists itens on list
- use for toggle the local list and see errors or warnings
