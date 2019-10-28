# Samiser's Dotfiles

This is a collection of configuration files used across my systems.
Feel free to browse them and use them as you please :)

## Dependencies

I've listed all of the programs used by these dotfiles in the programs.csv file.
If you install all of these everything should work.
You probably already have most if not all of these installed so dw too much about it.
If you're only looking to use the dotfiles for a particular program obviously you don't need to
install all of these programs, just the ones that file depends on.

Also these package names vary from repo to repo to you might have to tinker with the names
a lil bit. 

I usually install these programs with this command:

```
cat programs.csv | cut -d ',' -f1 | tr '\n' ' ' | sed 's/Name //' | xargs [package manager install command]
```

if you know how to do it better hmu [@Sam1ser](https://www.twitter.com/Sam1ser)

## Usage

to actually use the dotfiles by putting them in the correct places, follow these steps:

install stow:

```
sudo apt install stow
```

clone the repository:

```
git clone [repo url]
```

cd into the folder:

```
cd dotfiles
```

run stow on whatever folder u want the dotfiles for:

```
stow tmux/vim/i3
```

or run stow on all the folders for all the dotfiles:
```
stow *
```
