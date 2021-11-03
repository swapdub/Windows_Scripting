# Windows_Scripting
## Description
Currently the purpose of this script is to automate opening and logging in of the applications that I use.

I do hope I can continue finding new use cases with bat scripting, and considering how lazy I am, I will surely find it soon. 

> All suggestions and feedback are welcome!

## Notes
### Keywords and Meaning 
> Note: The following is not a [comprehensive list for batch commands.](https://www.tutorialspoint.com/batch_script/batch_script_commands.htm) 

- @REM - Comments Prefix
```DOS
    @rem Your comments
```
- set - Set a variable
```DOS
    set var=value
```
- echo - Sends output to the terminal
```DOS
    echo whatever you want as output
```
- start - opens the given program
    - /B - Does not wait for started program to exit
    - "" - Indicate that the next argument is a string
```DOS
    START "" /B "Your string here"
```
- timeout - used as a sleep command in seconds.
### Troubleshooting
The script needs to begin with the command:
```DOS
@if (@CodeSection == @Batch) @then

""" Rest of 
        the Script
            goes here
                        """
```
Otherwise you may encounter a compilation error

## Acknowledgments
Two resources helped me build and understand this:
- A [Stack Overflow Post](https://stackoverflow.com/questions/17038282/press-keyboard-keys-using-a-batch-file) 
- This page from [TutorialsPoint](https://www.tutorialspoint.com/batch_script/batch_script_commands.htm)