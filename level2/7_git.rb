#^ 7. GIT

# Git is a version control system that helps developers keep track of
# the changes they make to their code. With Git, developers can revert
# back to previous versions of their code, collaborate with others
# on a project, and easily share their code with others.

# Here are some basic concepts in Git:

# - Repository: A directory that contains all the files related to a project,
#               as well as the history of changes made to those files.
# - Fork: A copy of a repository that is created under a different account.
#         Forks allow you to make changes to a project without affecting the original repository.
# - Commit: A snapshot of all the files in the repository at a particular point in time.
#           When you make a change to a file and save it, you are creating a new commit.
# - Branch: A separate line of development in a repository. You can create new branches to
#           try out new ideas without affecting the main codebase.
# - Merge: When you want to combine the changes from one branch into another,
#          you can perform a merge.
# - Push: When you want to share your changes with others,
#         you can push your commits to a remote repository.
# - Pull: When you want to get the latest changes from a remote repository,
#         you can pull the updates to your local repository.

#* creating new repository

# Whether it's a brand new repository or a fork,
# this is done through the github page.

# For new repo just click on the '+' button,
#   select new repository and follow the instructions.
# For a new fork, go to the repository you want to fork,
#   and then click the 'fork' button and follow the instructions.

#* `git clone <url>`

# Once you have your new repository on github, you can use `git clone`
# to initialize the repository on your local machine.

# It takes one argument:
#   <url> -> url of the repository

#* `git branch`

# Shows all available branches in local repository.

# `git branch -r` similarly shows all available branches in remote repository.

#* `git checkout`

# Is generally used for switching between different branches.

# `git checkout origin/remote-branch-name`
#   - will switch to remote branch, you won't be able to make any changes here
# `git checkout -b origin/remote-branch-name`
#   - creates a local copy of `remote-branch-name` and setup remote tracking
#     for this branch
# `git checkout -b new-branch-name`
#   - creates a copy of the current branch
#   - for example you're on branch `staging` and run this command with `feature/my-new-feature`

#* `git pull <remote> <branch>`

# Retrieves new commmits from remote repository and merges them
# with your local reposistory.

# It takes two arguments:
#   <remote> -> name of the remote repository, in most use cases this will
#               be just `origin`
#   <branch> -> name of the branch you want to pull from

#* `git status`

# Displays all changes since last commit. It lists all new, modified
# and deleted files, and shows whether the changes in these files are
# staged for commit or not.

#* `git add <filename>`

# Stages the changes in the file for commit. This means when you run git commit,
# it will include the changes in this file. Unstaged changes wont be commited.

# You can also stage all unstaged files in one go with `git add -A`

#* `git commit -m '<message>'`

# Creates a new commit with all staged changed, and with the provided message.
# It is a good practice to write descriptive commit messages
# that explain the changes being made in each commit.
# This makes it easier to understand the history of a repository
# and track down any issues that may arise.

#* `git push <remote> <branch>`

# Sends all new commits from local repository to remote repository.
# It's used to share your changes with others working on the same project.

# It takes two arguments:
#   <remote> -> name of the remote repository, in most use cases this will
#               be just `origin`
#   <branch> -> name of the branch you want to push your changes to

# If remote tracking is setup for a branch, the arguments are optional.

#* Creating a pull request

# Similarly to creating a new repository, this is done through
# github directly. Just go to the repository on github - either
# your own, or the fork, depending on where you want to merge your
# changes - and then go to 'pull requests' -> 'new pull request'
# and follow the instructions.

#~ exercise:
# -> go to https://github.com/pmkaboo/coding-classes
# -> request read/write access (or create a fork)
# -> clone the repository to your local machine
# -> from the `main` branch a create a new branch with your name
# -> on your branch, add something to the bottom of this file,
#    it can be some text, code, or whatever you want
# -> stage, commit and push your changes
# -> open a pull request from your branch to `main`

# ----- your solution down here -----
#adding some lines here - adri