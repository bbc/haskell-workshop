haskell-workshop
================

Installation
------------
[Download the Haskell Platform](https://www.haskell.org/platform/) or [stack](https://docs.haskellstack.org/en/stable/install_and_upgrade/)

Editors
-------
### Vim
* [Syntastic](https://github.com/vim-syntastic/syntastic) supports syntax checking in Haskell for Vim.

Usage
-----
In your terminal you can open the interpreter with `ghci` or `stack ghci`.

To compile a program, run `ghc Filename.hs` or `stack ghc Filename.hs`. This will create an executable in the current directory which you can run.

Core text
-----------
[Learn You a Haskell for Great Good!](http://learnyouahaskell.com/chapters)

It is recommended a chapter a week is read and exercises completed. 

Exercises
---------

The exercises for the book are in the `learnYouAHaskellExercises/src` directory.

If you wish to do the exercises, create a folder within the root of this repo, e.g `chrisb/exercises/week1` and copy the contents of `learnYouAHaskellExercises` into your weeks folder. 

Once you have loaded `ghci`, you can load each module/file into the interpreter,

```
$ cd chrisb/exercises/week1
$ stack ghci
Prelude> :l Filename.hs
-- Now you can run the functions in that module here
```

The exercises come in various degrees of difficulty, hopefully starting straightforward and then ramping up somewhat. If you try to run a exercises that you have not implemented yet, it will throw an error in the interpreter letting you know.

You can also run unit tests to check whether your implementation is correct. In the learnYouAHaskellExercises directory, run:

```
$ cd chrisb/exercises/week1
$ stack test
```

to run the tests.

Feel free to contribute if they are too easy, too hard, or you have any suggestions.

Other suggested learnings
-------------------------
* [Functional Programming in Haskell - Online Course](https://www.futurelearn.com/courses/functional-programming-haskell/3)
* [Haskell Fundamentals Part 1](https://app.pluralsight.com/library/courses/haskell-fundamentals-part1/table-of-contents)
* [Haskell is Not For Production and Other Tales](https://www.youtube.com/watch?v=mlTO510zO78)
* [How I Start: guide to setting up a Haskell project with Stack](http://howistart.org/posts/haskell/)

TODO
----
* Find or create exercises
* Meeting times and communication mechanisms
