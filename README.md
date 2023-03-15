# Bash Scripts

Automate some tasks.

# Bash script to commit and push changes to a Git repository

This is a bash script that automates the process of committing and pushing changes to a Git repository. It takes two arguments: the path to the file or directory to commit and the commit message.

## How to use

1. Save the script to a file named `commit_and_push.sh`
2. Make the file executable by running `chmod +x commit_and_push.sh`
3. Open a terminal window and navigate to the directory where the script is saved
4. Run the script with the following command: `./commit_and_push.sh path/to/file_or_directory commit_message`

### Example usage

Suppose you have made changes to a file named `index.html` in the `~/my_project` directory, and you want to commit and push those changes with the commit message "Updated index.html".

Here's how you would use the script:

1. Open a terminal window and navigate to the directory where the script is saved
2. Run the following command: `./commit_and_push.sh ~/my_project/index.html "Updated index.html"`

The script will check if the path exists and if it has already been committed to the Git repository. If the path exists and has not been committed, the script will add the changes, commit them with the specified commit message, and push them to the remote repository. If the path has already been committed, the script will use `git commit --amend` to update the existing commit and push the changes to the remote repository.

## How to make the script a command in Bash

To make this script a command in Bash, you need to add the script to your `$PATH`. Here's how you can do that:

1. Save the script to a file named `commit_and_push.sh` in your home directory (`~/`)
2. Open your `.bashrc` file in a text editor (e.g., `nano ~/.bashrc`)
3. Add the following line to the end of the file: `export PATH=$PATH:~/`
4. Save and close the file
5. Run `source ~/.bashrc` to apply the changes to your current terminal session

Now you can run the script from any directory by typing `commit_and_push.sh` followed by the arguments.

