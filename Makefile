NAME 	= ft_containers
CC 		= c++
CFLAGS 	= -Wall -Wextra -Werror -std=c++98
CONTAINERS	= containers/
HEADERS = $(CONTAINERS)stack.hpp
MAIN    = main.cpp
OBJS    = $(MAIN:.cpp=.o)

all: $(NAME)

$(NAME):	Makefile $(OBJS) $(HEADERS)
	$(CC) $(CFLAGS) $(OBJS) -o $(NAME)

clean:
	rm -rf $(OBJS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re