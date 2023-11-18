# remove_spaces
`remove_spaces.bat` is a batch script used to remove spaces in the contents of a `.txt` file. It has has functionality to remove other specified characters (or strings).


# Quick Start guide

## Features

> [!NOTE]
> Parameters are not required, **but they must be given in order**.

1. `-i [inputFile]` name of file to be changed (default `input_file.txt`)

1. `-o [outputFile]` name of file to save changes to (default `output_file.txt`)

1. `-d [delim]` character to be removed (" " by default)

## Basic Instructions

1. Paste `replace_characters.bat` in the directory of the file you wish to modify (or vice versa).

2. Rename your `.txt` file to `input_file.txt` 

3.  Double-click `replace_characters.bat` to run script and follow instructions on Command Prompt (if applicable)

> [!NOTE]
> This will *not* modify the existing file. It will creat a copy to save to.

## Advanced Instructions (using command prompt)

1. In File Explorer, navigate the the directory of the files you want to modify.

3. Paste `replace_characters.bat`.

4. In the File Explorer search tree, replace the text with `cmd` and hit Enter to open Command Prompt in the current directory[^2].

To assign the file to modify, run:
```
replace_characters.bat -i input_file.txt
```

To assign the file to modify, the save file name, and remove the character "_", run:
```
replace_characters.bat -i input_file.txt -o output_file.txt -d _
```


[^2]: [YouTube tutorial](https://www.youtube.com/shorts/FDkXqlSx8B4)
