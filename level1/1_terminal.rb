#^ 1. Terminal

# terminal is an interface which lets you execute commands on your computer,
# for example, create folders, run ruby code, unzip/zip something, etc...,
# basically anything you can do with your mouse outside of the terminal, and more,
# you can do in the terminal by inputting the correct commands

# you can use the terminal found in your launchpad which you most likely used for
# ruby installation, or you can use the inbuilt terminal of vscode.
# to access vscode terminal just press control + shift + `
# (` -> the button to the right of shift)

# we will not go deep into the terminal in this course,
# we will just cover a few basic commands that are necessary for you to be
# able to run ruby code:

#* ls, pwd

# if you ever get lost, these two commands might help you orient yourself

# `ls` -> shows you the contents of your current location
# `pwd` -> shows you your current location

#* cd

# the `cd` command stands for `change directory` and
# it does exactly what the name suggests

# to change the directory we need to tell the command where we want to go
# we can do this by giving it an argument in the form of a path:

# `cd /` -> go to root
# `cd ~` -> go to home folder
# `cd ..` -> go to parent folder
# `cd folder_name` -> go to folder_name

# paths can be absolute or relative:

# absolute paths will always take you to the same place,
# regardless of where you are right now
# for example: `cd /Users/my_name` -> always takes you to your home folder
# absolute paths always start with a `/`

# relative paths are a convenience that basically prepends your current location
# to path you want to go to
# for example:
# assuming that my current location is `/Users/my_name`
# `cd coding` is the same as `cd /Users/my_name/coding`

#* irb

# the `irb` command will open a ruby console which lets you execute ruby code

# the console will take over the current terminal tab/window until closed,
# so if you need to use the terminal and console at the same time,
# you will need multiple terminal tabs/windows

# calling code in the console works exactly the same, as calling commands in the terminal
# just type something and press enter

# for example try calling `exit`,
# this will close the console

#* ruby

# the `ruby` command will try running the code in the given file
# for example: `ruby path/to/some_ruby_file.rb`