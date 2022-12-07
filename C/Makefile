
CC		= gcc
CFLAGS	= -Wall -Wextra -Werror
RM		= rm -rf


SRCS	= Colleen.c Grace.c Sully.c
OBJS	= Colleen.o Grace.o Sully.o

all: Colleen Grace Sully

Colleen: Colleen.o
	$(CC) $(CFLAGS) $< -o $@

Grace: Grace.o
	$(CC) $(CFLAGS) $< -o $@

Sully: Sully.o
	$(CC) $(CFLAGS) $< -o $@

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) Colleen Grace Sully Sully_*

re: fclean all


.PHONY: all clean fclean re Colleen Grace Sully
