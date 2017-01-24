# Assignment 1
Due:  11:59pm on Monday, January 30th.


# Overview

This assignment has several goals:

1.  Introduce you to writing your first Ruby program, including getting 
familiar with iterators, blocks, instance variables, classes, and methods.
2.  Get familiar with writing code in the Cloud9 IDE.
3.  Gain experience in using github as a source code repository.
4.  Use Rubocop to apply standardization rules.



# Task

Using the supplied code, your job is to add functionality so that the 
following lines are executed without exceptions and return the correct
results given a specific input file.

## Test Case 1
Find all words of length five that begin with 'e' and do not contain 'x'.
This test can be completed using the supplied code file, and a test
has already be provided to show you how this happens.
```
gh = GameHelper.new   # load the default data file
gh.all_words.with_word_length(5).begins_with('e').does_not_contain('x')
```

## Test Case 2
Find all words of length 6 that begin with either an 'e' or an 'a' and
do not contain 'y' nor 'i'.  
This test can be completed using the supplied code file, and a test
has already be provided to show you how this happens.
```
gh = GameHelper.new   # load the default data file
gh.all_words.with_word_length(6).begins_with('e','a').does_not_contain('y','i')
```

## Test Case 3
Find all words of length 6 that begin with an 'e', do not contain another 'e',
and do not contain a 'y'.

## Test Case 4
Find all words of length 4 or 5 that contain a 'y' but do not end with a 'y'.



I changed the README.md