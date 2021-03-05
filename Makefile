SOURCES_CHECKER		=	checker_srcs/utils/ft_put.c \
						checker_srcs/utils/ft_atoi.c \
						checker_srcs/utils/ft_equals.c \
						checker_srcs/utils/get_next_line_utils.c \
						checker_srcs/utils/get_next_line.c \
						checker_srcs/operations/sa.c \
						checker_srcs/operations/sb.c \
						checker_srcs/operations/ss.c \
						checker_srcs/operations/pa.c \
						checker_srcs/operations/pb.c \
						checker_srcs/operations/ra.c \
						checker_srcs/operations/rb.c \
						checker_srcs/operations/rr.c \
						checker_srcs/operations/rra.c \
						checker_srcs/operations/rrb.c \
						checker_srcs/operations/rrr.c \
						checker_srcs/prompt.c \
						checker_srcs/main.c
OBJECTS_CHECKER		=	${SOURCES_CHECKER:.c=.o}

SOURCES_PUSH_SWAP	=	push_swap_srcs/main.c
OBJECTS_PUSH_SWAP	=	${SOURCES_PUSH_SWAP:.c=.o}

NAME_CHECKER		=	checker
NAME_PUSH_SWAP		=	push_swap

COMPILE				=	cc
REMOVE				=	rm -f

COMPILATION_FLAGS	=	-Wall -Wextra -Werror

.c.o:
	${COMPILE} ${COMPILATION_FLAGS} -c $< -o ${<:.c=.o}

all: ${NAME_CHECKER} ${NAME_PUSH_SWAP}

${NAME_CHECKER}: ${OBJECTS_CHECKER}
	${COMPILE} -o ${NAME_CHECKER} ${OBJECTS_CHECKER}

${NAME_PUSH_SWAP}: ${OBJECTS_PUSH_SWAP}
	${COMPILE} -o ${NAME_PUSH_SWAP} ${OBJECTS_PUSH_SWAP}

clean:
	${REMOVE} ${OBJECTS_CHECKER} ${OBJECTS_PUSH_SWAP}

fclean: clean
	${REMOVE} ${NAME_CHECKER} ${NAME_PUSH_SWAP}

re: fclean all

.PHONY: all clean fclean re