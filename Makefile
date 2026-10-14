# ---- toolchain ----
NAME = libft.a

CC = cc
CFLAGS = -Wall -Wextra -Werror
CPPFLAGS = -Iinc
DEPFLAGS = -MMD -MP
COMPILE = $(CC) $(CFLAGS) $(CPPFLAGS) $(DEPFLAGS)

AR = ar -rcs

RM = rm -rf

# ---- directories ----
SRCDIR = src
BONUSDIR = src/bonus
OBJDIR = obj
INCDIR = inc

# ---- sources ----
SRCS =	ft_atoi.c \
	ft_bzero.c \
	ft_calloc.c \
	ft_isalnum.c \
	ft_isalpha.c \
	ft_isascii.c \
	ft_isdigit.c \
	ft_isprint.c \
	ft_itoa.c \
	ft_memchr.c \
	ft_memcmp.c \
	ft_memcpy.c \
	ft_memmove.c \
	ft_memset.c \
	ft_putchar_fd.c \
	ft_putendl_fd.c \
	ft_putnbr_fd.c \
	ft_putstr_fd.c \
	ft_split.c \
	ft_strchr.c \
	ft_strdup.c \
	ft_striteri.c \
	ft_strjoin.c \
	ft_strlcat.c \
	ft_strlcpy.c \
	ft_strlen.c \
	ft_strmapi.c \
	ft_strncmp.c \
	ft_strnstr.c \
	ft_strrchr.c \
	ft_strtrim.c \
	ft_substr.c \
	ft_tolower.c \
	ft_toupper.c

SRCS := $(addprefix $(SRCDIR)/,$(SRCS))
OBJS := $(SRCS:%.c=$(OBJDIR)/%.o)

BONUS_SRCS =	ft_lstadd_back_bonus.c \
		ft_lstadd_front_bonus.c \
		ft_lstclear_bonus.c \
		ft_lstdelone_bonus.c \
		ft_lstiter_bonus.c \
		ft_lstlast_bonus.c \
		ft_lstmap_bonus.c \
		ft_lstnew_bonus.c \
		ft_lstsize_bonus.c

BONUS_SRCS := $(addprefix $(BONUSDIR)/,$(BONUS_SRCS))
BONUS_OBJS := $(BONUS_SRCS:%.c=$(OBJDIR)/%.o)

DEPS := $(OBJS:.o=.d) $(BONUS_OBJS:.o=.d)

# ---- output ----
C_HL = \033[1;36m
C_DIM = \033[2m
C_RESET = \033[0m

START_NS := $(shell date +%s%N)

# $(1) action, $(2) file name, $(3) flags -> one aligned status line
define say
printf '  $(C_DIM)%-10s$(C_RESET)  $(C_HL)%-24s$(C_RESET)  $(C_DIM)%s$(C_RESET)\n' '$(1)' '$(2)' '$(3)'
endef

# no arguments -> one blank line
define say_gap
printf '\n'
endef

# ---- build ----
PHONY += all
all: $(NAME)
	@$(call say_gap)

$(NAME): $(OBJS)
	@$(call say,archiving,$(NAME),$(AR))
	@$(AR) $@ $^

PHONY += bonus
bonus: $(NAME) $(BONUS_OBJS)
	@$(call say,adding,$(NAME),$(AR))
	@$(AR) $(NAME) $(BONUS_OBJS)

$(OBJDIR)/%.o: %.c
	@mkdir -p $(@D)
	@$(call say,compiling,$(notdir $<),$(COMPILE))
	@$(COMPILE) -c $< -o $@

# ---- housekeeping ----
PHONY += clean
clean:
	@$(call say,removing,obj/,$(RM))
	@$(RM) $(OBJDIR)

PHONY += fclean
fclean: clean
	@$(call say,removing,$(NAME),$(RM))
	@$(RM) $(NAME)

PHONY += re
re: fclean
	@$(MAKE) --no-print-directory all

.PHONY: $(PHONY)

-include $(DEPS)
