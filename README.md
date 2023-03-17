# The "commit" Command

The "commit" command is a Bash script that simplifies the process of committing changes to a Git repository. It takes two arguments: the path to the file or directory that has been changed, and an optional message to include in the commit.

## Installation

To install the "<span style="color:red">commit</span>" command, follow these steps:

1. Download the script file to your computer.
2. Move the script to a directory in your `$PATH`. You can check your `$PATH` by running the following command:
`echo $PATH`

3. Make the script executable by running the following command:
`chmod +x commit`


## Usage

To use the "commit" command, follow these steps:

1. Navigate to the Git repository that contains the file or directory you want to commit changes to.
2. Run the following command, replacing `path/to/file` with the path to the file or directory that has been changed:
`commit path/to/file "optional commit message"`
If you don't provide an optional commit message, the script will use a default message that includes the name of the directory containing the file.
3. The script will automatically commit the changes and push them to the remote repository.


