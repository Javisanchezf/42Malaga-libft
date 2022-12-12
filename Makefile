# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: javiersa <javiersa@student.42malaga.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/12/09 19:21:46 by javiersa          #+#    #+#              #
#    Updated: 2022/12/12 16:45:30 by javiersa         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CFLAGS = -Wall -Werror -Wextra
CC = gcc
CLEAN = rm -Rf
SRC = ft_atoi.c\
	ft_bzero.c\
	ft_calloc.c\
	ft_isalnum.c\
	ft_isalpha.c\
	ft_isascii.c\
	ft_isdigit.c\
	ft_isprint.c\
	ft_itoa.c\
	ft_memchr.c\
	ft_memcmp.c\
	ft_memcpy.c\
	ft_memmove.c\
	ft_memset.c\
	ft_putchar_fd.c\
	ft_putendl_fd.c\
	ft_putnbr_fd.c\
	ft_putstr_fd.c\
	ft_split.c\
	ft_strchr.c\
	ft_strdup.c\
	ft_striteri.c\
	ft_strjoin.c\
	ft_strlcat.c\
	ft_strlcpy.c\
	ft_strlen.c\
	ft_strmapi.c\
	ft_strncmp.c\
	ft_strnstr.c\
	ft_strrchr.c\
	ft_strtrim.c\
	ft_substr.c\
	ft_tolower.c\
	ft_toupper.c
	
BONUS_SRC = ft_lstnew_bonus.c \
			ft_lstadd_front_bonus.c \
			ft_lstsize_bonus.c \
			ft_lstlast_bonus.c \
			ft_lstadd_back_bonus.c \
			ft_lstdelone_bonus.c \
			ft_lstclear_bonus.c \
			ft_lstiter_bonus.c \
			ft_lstmap_bonus.c

OBJS := $(SRC:.c=.o)
BONUS_OBJS := $(BONUS_SRC:.c=.o)

all: $(NAME)
bonus: $(BONUS_OBJS)
	ar rcs $(NAME) $(BONUS_OBJS)
$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)
.c.o:
	$(CC) $(CFLAGS) -c $< -o ${<:.c=.o}
clean:
	$(CLEAN) ./$(OBJS) ./$(BONUS_OBJS)
fclean: clean
	$(CLEAN) ./$(NAME)
re: fclean all
#Personal use
compile:
	make all
	make bonus
	$(CC) $(CFLAGS) $(NAME) main.c | ./a.out | rm a.out
git:
	chmod -R 755 *
	git add *
	git commit -m "AUTOMATIC COMMIT"
	git push
	git ls-files
gitignore:
	echo ".*\n!.gitignore\n*.out\n*.o\n*.a">.gitignore
	

.PHONY : all clean fclean re bonus compile git gitignore