.PHONY: all build clean

all: build

build: bin/main.exe

bin/main.exe: main.cs bin/.dirstamp
	mcs main.cs -out:bin/main.exe

bin/.dirstamp:
	mkdir -p bin
	touch bin/.dirstamp

clean:
	git clean -fdx -e "*.swp"
