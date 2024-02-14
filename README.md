My setup for the 2023 Advent of Code in Go.

run
```./makeday.sh [dayNr]```
to create a certain day.

For use with other years than 2023, it is recommended to change the 'YEAR' variable in makeday.sh.

Most of the files are copied over from the .blank folder, except go.mod is created within makeday.sh.

The ```getLines``` function in .blank/util.go just turns a specified file into an array of lines (strings) to solve the problem with.
