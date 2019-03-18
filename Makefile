# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: groberto <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/16 17:46:34 by groberto          #+#    #+#              #
#    Updated: 2019/01/16 15:02:06 by groberto         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libft.a
CFLAGS	= -Wall -Werror -Wextra
HEAD	= -I includes

LIBFT_URL	= ./srcs/libft
GNL_URL		= ./srcs/get_next_line
MATH_URL	= ./srcs/math

SRC_LIB	= $(LIBFT_URL)/ft_atoi.o \
		  $(LIBFT_URL)/ft_bzero.o \
		  $(LIBFT_URL)/ft_isalnum.o \
		  $(LIBFT_URL)/ft_isalpha.o \
		  $(LIBFT_URL)/ft_isascii.o \
		  $(LIBFT_URL)/ft_isdigit.o \
		  $(LIBFT_URL)/ft_isprint.o \
		  $(LIBFT_URL)/ft_memalloc.o \
		  $(LIBFT_URL)/ft_memccpy.o \
		  $(LIBFT_URL)/ft_memchr.o \
		  $(LIBFT_URL)/ft_memcmp.o \
		  $(LIBFT_URL)/ft_memcpy.o \
		  $(LIBFT_URL)/ft_memdel.o \
		  $(LIBFT_URL)/ft_memmove.o \
		  $(LIBFT_URL)/ft_memset.o \
		  $(LIBFT_URL)/ft_putchar.o \
		  $(LIBFT_URL)/ft_putchar_fd.o \
		  $(LIBFT_URL)/ft_putendl.o \
		  $(LIBFT_URL)/ft_putendl_fd.o \
		  $(LIBFT_URL)/ft_putnbr.o \
		  $(LIBFT_URL)/ft_putnbr_fd.o \
		  $(LIBFT_URL)/ft_putstr.o \
		  $(LIBFT_URL)/ft_putstr_fd.o \
		  $(LIBFT_URL)/ft_strcat.o \
		  $(LIBFT_URL)/ft_strchr.o \
		  $(LIBFT_URL)/ft_strclr.o \
		  $(LIBFT_URL)/ft_strcmp.o \
		  $(LIBFT_URL)/ft_strcpy.o \
		  $(LIBFT_URL)/ft_strdel.o \
		  $(LIBFT_URL)/ft_strdup.o \
		  $(LIBFT_URL)/ft_strequ.o \
		  $(LIBFT_URL)/ft_striter.o \
		  $(LIBFT_URL)/ft_striteri.o \
		  $(LIBFT_URL)/ft_strjoin.o \
		  $(LIBFT_URL)/ft_strlen.o \
		  $(LIBFT_URL)/ft_strmap.o \
		  $(LIBFT_URL)/ft_strmapi.o \
		  $(LIBFT_URL)/ft_strncat.o \
		  $(LIBFT_URL)/ft_strncmp.o \
		  $(LIBFT_URL)/ft_strncpy.o \
		  $(LIBFT_URL)/ft_strnequ.o \
		  $(LIBFT_URL)/ft_strnew.o \
		  $(LIBFT_URL)/ft_strnstr.o \
		  $(LIBFT_URL)/ft_strrchr.o \
		  $(LIBFT_URL)/ft_strstr.o \
		  $(LIBFT_URL)/ft_strsub.o \
		  $(LIBFT_URL)/ft_strtrim.o \
		  $(LIBFT_URL)/ft_tolower.o \
		  $(LIBFT_URL)/ft_toupper.o \
		  $(LIBFT_URL)/ft_itoa.o \
		  $(LIBFT_URL)/ft_strsplit.o \
		  $(LIBFT_URL)/ft_strlcat.o \
		  $(LIBFT_URL)/ft_lstnew.o \
		  $(LIBFT_URL)/ft_lstdelone.o \
		  $(LIBFT_URL)/ft_lstdel.o \
		  $(LIBFT_URL)/ft_lstadd.o \
		  $(LIBFT_URL)/ft_lstiter.o \
		  $(LIBFT_URL)/ft_lstmap.o \
		  $(LIBFT_URL)/ft_abs.o \
		  $(LIBFT_URL)/ft_ismaj.o \
		  $(LIBFT_URL)/ft_ismin.o \
		  $(LIBFT_URL)/ft_recursive_power.o \
		  $(LIBFT_URL)/ft_sqrt.o \
		  $(LIBFT_URL)/ft_strtolower.o \
		  $(LIBFT_URL)/ft_strtoupper.o \
		  $(LIBFT_URL)/ft_swap.o \

SRC_GNL	= $(GNL_URL)/get_next_line.o \

%.o: %.c
	gcc $(CFLAGS) $(HEAD) -o $@ -c $<;

all : $(NAME)

$(NAME): $(SRC_LIB) $(SRC_GNL)
	@ar rcs $(NAME) $^
	@clear
	@echo "\033[92mLibft Successfully implemented.\033[0m"

clean:
	@rm -rf $(SRC_LIB) $(SRC_GNL)

fclean: clean
	@rm -rf $(NAME)

re: fclean all

.PHONY: clean fclean re all
