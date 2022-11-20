# Ruby Challenges / Sudoku Validator

## Exercise Intro

[Sudoku](http://en.wikipedia.org/wiki/Sudoku) is a logic-based combinatorial number-placement puzzle. The objective is to fill a 9×9 grid with digits so that each column, each row, and each of the nine 3×3 sub-grids that compose the grid contains all of the digits from 1 to 9.

Write a command-line program that can read a file containing a Sudoku grid and validates it. The grid can be partially or completely solved.

## My features

Besides developing the project, I also developed unit tests for my libs: checker, parser and string_validator specs. In order to practice and learn more about unit tests in ruby.

## Instructions

To see my project, you'll want to clone and run the setup script for the repo

    git clone git@github.com:ErickArgollo/project--Sudoku-Validator--Ruby.git
    cd sudoku-validator
    bin/setup

Sample usage:

```
$ ./sudoku-validator valid_complete.sudoku
  This sudoku is valid.

$ ./sudoku-validator valid_incomplete.sudoku
  This sudoku is valid, but incomplete.

$ ./sudoku-validator invalid_complete.sudoku
  This sudoku is invalid.

$ ./sudoku-validator invalid_incomplete.sudoku
  This sudoku is invalid.
```

A Sudoku is valid if:

1. It has no duplicates in a row
2. It has no duplicates in a column
3. It has no duplicates in a sub-group (the nine smaller 3x3 grids).

## Input files
The input files look like this

```
8 5 0 |0 0 2 |4 0 0
7 2 0 |0 0 0 |0 0 9
0 0 4 |0 0 0 |0 0 0
------+------+------
0 0 0 |1 0 7 |0 0 2
3 0 5 |0 0 0 |9 0 0
0 4 0 |0 0 0 |0 0 0
------+------+------
0 0 0 |0 8 0 |0 7 0
0 1 7 |0 0 0 |0 0 0
0 0 0 |0 3 6 |0 4 0
```

Important: zeros represent squares which do not have a value assigned yet. Having multiple zeroes in a row, column, or subgroup _does not_make the puzzle invalid.

## Credits

![thoughtbot](https://presskit.thoughtbot.com/assets/images/logo.svg)

This exercise is maintained and funded by
[thoughtbot, inc](http://thoughtbot.com/community).

The names and logos for Upcase and thoughtbot are registered trademarks of
thoughtbot, inc.
