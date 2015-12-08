SOURCE := $(CURDIR)
TARGET := $(HOME)
FILES  := gitconfig slate vimrc zshrc

all: clean install

clean:
	@-for f in $(FILES); do \
		unlink $(TARGET)/.$$f; \
	done

install:
	@for f in $(FILES); do \
		ln -sf $(SOURCE)/$$f $(TARGET)/.$$f; \
	done
