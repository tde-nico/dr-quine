
CC			= gcc
CFLAGS		= -Wall -Wextra -Werror -m64 -no-pie
NASM		= nasm
ASMFLAGS	= -felf64
RM			= rm -rf

SRCS		= Colleen.s Grace.s Sully.s
OBJS		= Colleen.o Grace.o Sully.o

all: Colleen Grace Sully

Colleen: Colleen.o
	$(CC) $(CFLAGS) $< -o $@

Grace: Grace.o
	$(CC) $(CFLAGS) $< -o $@

Sully: Sully.o
	$(CC) $(CFLAGS) $< -o $@

%.o: %.s
	$(NASM) $(ASMFLAGS) $< -o $@

clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) Colleen Grace Sully Sully_*

re: fclean all


.PHONY: all clean fclean re
