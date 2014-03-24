# MWRC2014_code

This repository contains the code samples from my
[Affordances in Programming Languages]() talk from
[Mountain West Ruby Conference 2014]().

# Contents

In my talk, I gave four examples.  Each of those examples is in its
own subdirectory.  Within each subdirectory, the example code is
broken up by language (`smalltalk`, `c++`, `ruby`).

The Smalltalk code is not directly executable, as I had to extract it
from my Smalltalk image and convert it to a form that was more
accessible on a slide.

The C++ code has a simple Makefile that should work on any system that
has an implementation of `make`.

The Ruby code requires Ruby 2.0 or later for at least one of the
examples.

## Point Example

The first example shows how to implement a `Point` class that supports
both cartesian and polar coordinates.  See the `point` directory.

## Multiple Blocks Example

The second example shows how Smalltalk and Ruby can both support
multiple blocks being passed to a method.  See the `multiple_blocks`
example.

## RAII Example

The third example shows the RAII pattern from C++ and how to achieve a
similar effect in Ruby using blocks.  See the `RAII` directory.

Running `make` in the `c++` subdirectory will build three executables:

* `broken` shows the initial broken example that leaks a resource
* `wordy` shows a fixed, but verbose way of not leaking the resource
* `raii` shows the final version that uses the RAII idiom

In the `ruby` subdirectory, run `ruby driver.rb` to run the example.

## Subclass Iteration Example

The final example shows how to iterate the subclasses of a class in
order to find a class that can read an image format.

In the `ruby` subdirectory, run `ruby driver.rb` to run the example.
