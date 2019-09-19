# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ksefeane <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/19 17:37:26 by ksefeane          #+#    #+#              #
#    Updated: 2019/09/19 17:38:09 by ksefeane         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = printf

SRC = src/*

LIB = libft/libft.a

BUILD = gcc -Wall -Werror -Wextra -o

all: $(NAME)

$(NAME): $(LIB)
	@$(BUILD) $(NAME) $(SRC) $(LIB)
	@echo "$(NAME) created"

$(LIB):
	@make -C libft

clean:
	@rm -rf $(NAME)
	@echo "$(NAME) deleted"

fclean: clean
	@make fclean -C libft

re: clean all

RE: fclean all

.PHONY: all clean fclean re RE
