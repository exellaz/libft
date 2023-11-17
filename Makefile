# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: kkhai-ki <kkhai-ki@student.42kl.edu.my>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/17 14:14:55 by kkhai-ki          #+#    #+#              #
#    Updated: 2023/10/24 17:52:15 by kkhai-ki         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

CC = gcc
CFLAGS = -Wall -Wextra -Werror

HEADERS = ./libft.h

SRC1 =	./ft_isalpha.c	\
		./ft_isdigit.c	\
		./ft_isalnum.c	\
		./ft_isascii.c	\
		./ft_isprint.c	\
		./ft_strlen.c	\
		./ft_memset.c	\
		./ft_bzero.c	\
		./ft_memcpy.c	\
		./ft_memmove.c	\
		./ft_strlcpy.c	\
		./ft_strlcat.c	\
		./ft_toupper.c	\
		./ft_tolower.c	\
		./ft_strchr.c	\
		./ft_strrchr.c	\
		./ft_strncmp.c	\
		./ft_memchr.c	\
		./ft_memcmp.c	\
		./ft_strnstr.c	\
		./ft_atoi.c		\
		./ft_calloc.c	\
		./ft_strdup.c

SRC2 =	./ft_substr.c		\
		./ft_strjoin.c		\
		./ft_strtrim.c		\
		./ft_split.c		\
		./ft_itoa.c			\
		./ft_strmapi.c		\
		./ft_striteri.c		\
		./ft_putchar_fd.c	\
		./ft_putstr_fd.c	\
		./ft_putendl_fd.c	\
		./ft_putnbr_fd.c

SRCS = $(SRC1) $(SRC2)

OBJS_SRCS = $(SRCS:.c=.o)

BONUS =	./ft_lstnew.c		\
		./ft_lstadd_front.c	\
		./ft_lstsize.c		\
		./ft_lstlast.c		\
		./ft_lstadd_back.c	\
		./ft_lstdelone.c	\
		./ft_lstclear.c		\
		./ft_lstiter.c		\
		./ft_lstmap.c

OBJS_BONUS = $(BONUS:.c=.o)

OBJS = $(OBJS_SRCS) $(OBJS_BONUS)

all :	$(NAME)

$(NAME) :	$(OBJS_SRCS)
			ar rcs $@ $^

.c.o :	$(SRCS) $(HEADERS)
		$(CC) $(CFLAGS) -c $< -o $(<:.c=.o)

clean :
	-rm -f $(OBJS)

fclean : clean
	-rm -f $(NAME)

re :	fclean all

bonus:	$(OBJS_BONUS)
		ar rcs $(NAME) $^

.PHONY: all clean bonus fclean re
