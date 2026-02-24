# 42-Libft

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
- [Troubleshooting](#troubleshooting)
- [Project Status](#project-status)
- [License](#license)

## Overview

Libft is a custom implementation of essential C standard library functions, created as part of the 42 School curriculum. This library provides a comprehensive set of string manipulation, memory management, character checking, and linked list utilities for use in C projects.

This library serves as a building block for future 42 School projects and provides developers with a deeper understanding of low-level C programming, memory management, and data structure implementation. It is designed for C developers who need reliable, well-tested implementations of common utility functions without relying on the full standard library, or for those learning systems programming fundamentals.

## Features

- **String manipulation**: Functions for copying, concatenating, searching, trimming, splitting, and transforming strings (`ft_strlen`, `ft_strcpy`, `ft_strjoin`, `ft_split`, `ft_strtrim`, etc.)
- **Memory operations**: Low-level memory manipulation including allocation, copying, comparison, and initialization (`ft_memset`, `ft_memcpy`, `ft_memmove`, `ft_calloc`, `ft_bzero`)
- **Character classification**: Functions to check character types such as alphabetic, numeric, alphanumeric, printable, and ASCII (`ft_isalpha`, `ft_isdigit`, `ft_isalnum`, `ft_isprint`, `ft_isascii`)
- **Type conversion**: String-to-integer and integer-to-string conversion functions (`ft_atoi`, `ft_itoa`)
- **File descriptor output**: Functions to write characters, strings, and numbers to specified file descriptors (`ft_putchar_fd`, `ft_putstr_fd`, `ft_putnbr_fd`, `ft_putendl_fd`)
- **Linked list operations**: Complete set of singly linked list utilities including creation, insertion, deletion, traversal, and mapping (`ft_lstnew`, `ft_lstadd_front`, `ft_lstadd_back`, `ft_lstclear`, `ft_lstmap`)
- **Function application**: Higher-order functions for applying transformations across strings and lists (`ft_strmapi`, `ft_striteri`, `ft_lstiter`, `ft_lstmap`)

## Getting Started

### Prerequisites

- GCC or any C compiler supporting C99 standard
- Make build tool
- UNIX-like operating system (Linux, macOS, or similar)

No external libraries are required beyond the standard system headers (`stdlib.h`, `unistd.h`, `limits.h`).

### Installation

1. Clone the repository:

```sh
git clone https://github.com/HandsomeCarrot/42-Libft.git
cd 42-Libft
```

2. Build the library:

```sh
make
```

This compiles the core library functions and creates the static library archive `libft.a`.

3. To include bonus linked list functions:

```sh
make bonus
```

4. To compile all functions (core and bonus) into a single library:

```sh
make allbonus
```

## Usage

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

Compile your program with the library:

```sh
gcc -Wall -Wextra -Werror your_program.c -L. -lft -o your_program
```

## Configuration

The library is configured through the Makefile with the following options:

- **Compiler**: `CC = cc` (can be changed to `gcc`, `clang`, etc.)
- **Compiler flags**: `-Wall -Wextra -Werror -g` (strict warning settings and debug symbols)
- **Library name**: `libft.a` (standard static library naming)

To modify compilation settings, edit the Makefile variables at the top of the file. The `-g` flag includes debugging symbols and can be removed for production builds.

### Makefile Targets

- `make` or `make all`: Build the core library
- `make bonus`: Build the library with bonus linked list functions
- `make allbonus`: Build the library with all functions (core + bonus)
- `make clean`: Remove object files
- `make fclean`: Remove object files and the library archive
- `make re`: Clean and rebuild the library

## Troubleshooting

- **Compilation errors**: Ensure you have a C99-compatible compiler installed and that `make` is available on your system
- **Linking errors**: When linking your program, make sure the library path is correct with `-L.` and the library name with `-lft`
- **Missing functions**: If you need the linked list functions, ensure you've run `make bonus` or `make allbonus` to include them in the library
- **Undefined references**: Verify that `libft.h` is in the same directory as your source files or properly included in your include path with `-I` flag

## Project Status

Completed (116/100 pts)

## License

This project does not specify a license. The code is part of the 42 School curriculum and follows the school's academic policies. If you wish to use this code, please contact the repository owner for clarification on usage rights and permissions.
