# dotfiles
My dotfiles.

# Usage
```
cd ~
mkdir dotfiles
cd dotfiles
git clone <this repo>
```

Look at `installSymlink.sh`, decide what you want to use, and then remove the dot files from your home folder. 

E.g.: `rm ~/.bash_profile`

Create the individual links to the dotfiles you removed. 

E.g.: `ln -s ~/dotfiles/.bashrc ~/.bashrc`

*Optional*: 

Use `bashrc` instead of `bash_profile` and make the later look like: 

```
#!/bin/bash

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi
```
