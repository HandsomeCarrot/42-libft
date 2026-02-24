# Libft

A custom C library implementation recreating essential standard library functions as part of the 42 coding school curriculum. This project serves as the foundation for future 42 projects by providing a reusable collection of utility functions.

## Table of Contents

- [About](#about)
- [Features](#features)
- [Building](#building)
- [Usage](#usage)
- [Technical Details](#technical-details)
- [Project Structure](#project-structure)

## About

Libft is the first project at 42 where you build your own C library from scratch. The library includes reimplementations of standard libc functions, additional utility functions for string and memory manipulation, and bonus functions for linked list operations. This project deepens understanding of C fundamentals, memory management, and data structures.

## Features

### Part 1: Libc Functions
Character classification and conversion functions implementing standard ctype.h and stdlib.h behavior:
- `ft_isalpha`, `ft_isdigit`, `ft_isalnum`, `ft_isascii`, `ft_isprint`
- `ft_toupper`, `ft_tolower`
- `ft_atoi` - string to integer conversion

String manipulation functions matching string.h behavior:
- `ft_strlen`, `ft_strchr`, `ft_strrchr`, `ft_strncmp`
- `ft_strlcpy`, `ft_strlcat`, `ft_strnstr`, `ft_strdup`

Memory functions replicating string.h operations:
- `ft_memset`, `ft_bzero`, `ft_memcpy`, `ft_memmove`
- `ft_memchr`, `ft_memcmp`, `ft_calloc`

### Part 2: Additional Functions
Enhanced string utilities not present in standard libraries:
- `ft_substr` - extract substring from string
- `ft_strjoin` - concatenate two strings into new allocation
- `ft_strtrim` - trim characters from both ends
- `ft_split` - split string by delimiter into array
- `ft_itoa` - integer to string conversion
- `ft_strmapi` - apply function to each character with index
- `ft_striteri` - iterate string with function and index

File descriptor output functions:
- `ft_putchar_fd`, `ft_putstr_fd`, `ft_putendl_fd`, `ft_putnbr_fd`

### Bonus: Linked List Functions
Complete linked list implementation with the `t_list` structure:
- `ft_lstnew` - create new list node
- `ft_lstadd_front` - add node at beginning
- `ft_lstadd_back` - add node at end
- `ft_lstsize` - count list nodes
- `ft_lstlast` - get last node
- `ft_lstdelone` - delete single node
- `ft_lstclear` - delete entire list
- `ft_lstiter` - apply function to each node
- `ft_lstmap` - create new list by applying function

## Building

The project includes a comprehensive Makefile with multiple targets:

```bash
# Build mandatory functions only
make

# Build with bonus functions
make bonus

# Build everything (mandatory + bonus)
make allbonus

# Clean object files
make clean

# Clean everything including library
make fclean

# Rebuild from scratch
make re
```

The library compiles with strict flags: `-Wall -Wextra -Werror -g`.

## Usage

Include the header in your C files:
```c
#include "libft.h"
```

Compile your project with the library:
```bash
cc your_file.c libft.a
```

## Technical Details

- **Language**: C
- **Norm**: Follows 42 coding standards (Norminette)
- **Compilation**: GCC/Clang with `-Wall -Wextra -Werror`
- **Output**: Static library `libft.a`
- **Dependencies**: Standard C libraries (stdlib.h, unistd.h, limits.h)

## Project Structure

```
.
├── Makefile           # Build configuration
├── libft.h           # Header with function prototypes
├── ft_*.c            # Mandatory function implementations
└── ft_*_bonus.c      # Bonus linked list implementations
```
