NAME = libsample.bundle
SRCS = sample.c
OBJS = $(SRCS:.c=.o)
CC   = clang

$(NAME): $(OBJS)
	$(CC) -dynamiclib -o $@ $(OBJS)

all: $(NAME)

.c.o:
	$(CC) -O3 -c $< -o $@

clean:
	rm -f $(OBJS) $(NAME)