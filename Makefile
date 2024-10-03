install:
	@git pull
	@clear
	apk-get add bash curl wget jq
	apk-get add python python-pip nano clang
	python -m pip add-r data/requirements.txt
	@gcc main.c -o main
	@clear
	@printf "\n\033[37m[\033[33m*\033[37m] Module berhasil diinstall \033[31m.."
	@printf "\n\033[37m[\033[31m!\033[37m] Run sc dg ketik \033[1;30m'\033[0m\033[32mmake run\033[1;30m' \033[0m\033[37matau \033[1;30m'\033[0m\033[32m./main\033[1;30m'\n\n"

update:
	@git pull

run:
	@./main

reset:
	@rm main
