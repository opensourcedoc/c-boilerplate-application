# C Boilerplate for Application

A C boilerplate project to build a C based application.

## System Requirements

* C compiler (Clang or GCC)
* GNU Make (for compilation only)

## Usage

Clone the project:

```
$ git clone https://github.com/cwchentw/c-boilerplate-application.git myapp
```

Move your working directory to the root of *myapp*:

```
$ cd myapp
```

Modify *main.c* as needed. You may add or remove C source files (*.c*) as needed.

Compile the application:

```
$ make
```

Run the compiled program:

```
$ ./dist/program
```

Set your own remote repository:

```
$ git remote set-url origin https://example.com/user/project.git
```

Push your modification to your own repo:

```
$ git push
```

## Project Configuration

Here are the parameters in *Makefile*:

* **PROGRAM**: the name of the compiled program
* **C_STD**: the C standard as a GCC C dialect

## Note

The project assumes a Unix console environment. Windows users can install [MSYS2](https://www.msys2.org/) to obtain a decent Unix environment.

Because seldom Visual C++ users compile programs with Make, we don't include the compiler in the project.

## Copyright

Copyright (c) 2020 Michelle Chen. Licensed under MIT.
