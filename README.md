*This project has been created as part of the 42 curriculum by vpoka.*

# 42-Libft

My first own library in C.

## Table of Contents

- [Description](#description)
- [Instructions](#instructions)
- [Resources](#resources)
- [Configuration](#configuration)
- [Project structure](#project-structure)
- [Troubleshooting](#troubleshooting)
- [Status](#status)

## Description

Libft is a custom implementation of essential C standard library functions, created as part of the 42 School curriculum. This library provides a comprehensive set of string manipulation, memory management, character checking, and linked list utilities for use in C projects.

This library serves as a building block for future 42 School projects and provides developers with a deeper understanding of low-level C programming, memory management, and data structure implementation. It is designed for C developers who need clear, self-contained implementations of common utility functions without relying on the full standard library, or for those learning systems programming fundamentals.

It compiles into the static library `libft.a`, created at the repository root as the subject requires, with the flags `-Wall -Wextra -Werror`.

### Features

- **String manipulation**: Functions for copying, concatenating, searching, trimming, splitting, and transforming strings (`ft_strlen`, `ft_strlcpy`, `ft_strlcat`, `ft_strjoin`, `ft_split`, `ft_strtrim`, etc.)
- **Memory operations**: Low-level memory manipulation including allocation, copying, comparison, and initialization (`ft_memset`, `ft_memcpy`, `ft_memmove`, `ft_calloc`, `ft_bzero`)
- **Character classification**: Functions to check character types such as alphabetic, numeric, alphanumeric, printable, and ASCII (`ft_isalpha`, `ft_isdigit`, `ft_isalnum`, `ft_isprint`, `ft_isascii`)
- **Type conversion**: String-to-integer and integer-to-string conversion functions (`ft_atoi`, `ft_itoa`)
- **File descriptor output**: Functions to write characters, strings, and numbers to specified file descriptors (`ft_putchar_fd`, `ft_putstr_fd`, `ft_putnbr_fd`, `ft_putendl_fd`)
- **Linked list operations**: Complete set of singly linked list utilities including creation, insertion, deletion, traversal, and mapping (`ft_lstnew`, `ft_lstadd_front`, `ft_lstadd_back`, `ft_lstclear`, `ft_lstmap`)
- **Function application**: Higher-order functions for applying transformations across strings and lists (`ft_strmapi`, `ft_striteri`, `ft_lstiter`, `ft_lstmap`)

## Instructions

### Prerequisites

- A C compiler: the Makefile uses `cc`, as the subject requires
- `make`
- `ar` (binutils) to create the static library
- A UNIX-like operating system (Linux, macOS, or similar)

No external libraries are required beyond the standard system headers used in `inc/libft.h` (`stdlib.h`, `unistd.h`, `limits.h`).

### Build

1. Clone the repository:

```sh
git clone https://github.com/HandsomeCarrot/42-libft.git
cd 42-libft
```

2. Build the library:

```sh
make
```

This compiles the core library functions and creates the static library archive `libft.a`.

3. To include the bonus linked list functions in the same archive:

```sh
make bonus
```

Other targets:

- `make` or `make all`: build the core library
- `make bonus`: add the bonus linked list functions to `libft.a`
- `make clean`: remove object files
- `make fclean`: remove object files and the library archive
- `make re`: clean and rebuild the library

### Usage

To use Libft in your C projects, include the header file and link against the compiled library:

```c
#include "libft.h"

int main(void)
{
    char *str = ft_strdup("Hello, 42!");
    char *trimmed = ft_strtrim(str, " !");

    ft_putendl_fd(trimmed, 1);

    free(str);
    free(trimmed);
    return 0;
}
```

Compile your program with the library (the header lives in `inc/`):

```sh
cc -Wall -Wextra -Werror -Iinc your_program.c -L. -lft -o your_program
```

## Resources

- The project subject is included in this repository as `42_subject_libft.pdf`.
- Man pages of the reimplemented libc functions, whose behavior must match (for example `man 3 strlen`, `man 3 memcpy`, `man 3 atoi`, `man 3 strdup`, `man 3 calloc`). Online: [strlen(3)](https://man7.org/man3/strlen.3.html), [memcpy(3)](https://man7.org/man3/memcpy.3.html), [strdup(3)](https://man7.org/man3/strdup.3.html).
- `strlcpy` and `strlcat` originate from OpenBSD: [strlcpy(3)](https://man.openbsd.org/strlcpy).

### AI usage

AI was used for documentation, commits, the Makefile, and this README.

## Configuration

The library is configured through the Makefile with the following options:

- **Compiler**: `CC = cc` (can be changed to `gcc`, `clang`, etc.)
- **Compiler flags**: `-Wall -Wextra -Werror` (strict warning settings and debug symbols)
- **Include path**: `-Iinc` (the public header lives in `inc/`)
- **Library name**: `libft.a` (built at the repository root)

To modify compilation settings, edit the Makefile variables at the top of the file. The `-g` flag includes debugging symbols and can be removed for production builds.

## Project structure

```
.
├── Makefile              # builds libft.a (all, bonus, clean, fclean, re)
├── inc/
│   └── libft.h           # public header, including t_list for the bonus
├── src/
│   ├── ft_*.c            # mandatory functions
│   └── bonus/
│       └── ft_*_bonus.c  # linked list functions
├── obj/                  # build artifacts (git-ignored)
└── 42_subject_libft.pdf  # the 42 subject
```

Sources are organized in `src/` and `inc/` instead of the repository root, while `libft.a` is still created at the root as the subject requires. Bonus functions live in `src/bonus/` in `*_bonus.c` files.

## Troubleshooting

- **Compilation errors**: ensure `make` and a C compiler are installed, and that you build from the repository root so the Makefile finds `src/` and `inc/`
- **Missing functions**: if you need the linked list functions, run `make bonus` so they are added to `libft.a`
- **Linking errors**: when linking your program, use `-L. -lft` for the library and `-Iinc` for the header, and make sure `libft.a` has been built first
- **Header not found**: `libft.h` is in `inc/`, not next to your sources — add `-Iinc` (or your own `-I` path) to the compile command

## Status

Complete — evaluated at 116/125 pts.

